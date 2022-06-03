.class public final Lorg/slf4j/helpers/MessageFormatter;
.super Ljava/lang/Object;
.source "MessageFormatter.java"


# static fields
.field static final DELIM_START:C = '{'

.field static final DELIM_STOP:C = '}'

.field static final DELIM_STR:Ljava/lang/String; = "{}"

.field private static final ESCAPE_CHAR:C = '\\'


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/MessageFormatter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "messagePattern":Ljava/lang/String;
    move-object v1, p1

    .local v1, "argArray":[Ljava/lang/Object;
    move-object v4, v1

    invoke-static {v4}, Lorg/slf4j/helpers/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    move-object v2, v4

    .line 157
    .local v2, "throwableCandidate":Ljava/lang/Throwable;
    move-object v4, v1

    move-object v3, v4

    .line 158
    .local v3, "args":[Ljava/lang/Object;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 159
    move-object v4, v1

    invoke-static {v4}, Lorg/slf4j/helpers/MessageFormatter;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 161
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "messagePattern":Ljava/lang/String;
    return-object v0
.end method

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 13

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "messagePattern":Ljava/lang/String;
    move-object v1, p1

    .local v1, "argArray":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    move-object v7, v0

    if-nez v7, :cond_0

    .line 167
    new-instance v7, Lorg/slf4j/helpers/FormattingTuple;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 218
    .end local v0    # "messagePattern":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 170
    .restart local v0    # "messagePattern":Ljava/lang/String;
    :cond_0
    move-object v7, v1

    if-nez v7, :cond_1

    .line 171
    new-instance v7, Lorg/slf4j/helpers/FormattingTuple;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0

    .line 174
    :cond_1
    const/4 v7, 0x0

    move v3, v7

    .line 177
    .local v3, "i":I
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x32

    add-int/lit8 v9, v9, 0x32

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v7

    .line 180
    .local v5, "sbuf":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "L":I
    :goto_1
    move v7, v6

    move-object v8, v1

    array-length v8, v8

    if-ge v7, v8, :cond_6

    .line 182
    move-object v7, v0

    const-string/jumbo v8, "{}"

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    .line 184
    .local v4, "j":I
    move v7, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 186
    move v7, v3

    if-nez v7, :cond_2

    .line 187
    new-instance v7, Lorg/slf4j/helpers/FormattingTuple;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_0

    .line 190
    :cond_2
    move-object v7, v5

    move-object v8, v0

    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 191
    new-instance v7, Lorg/slf4j/helpers/FormattingTuple;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_0

    .line 194
    :cond_3
    move-object v7, v0

    move v8, v4

    invoke-static {v7, v8}, Lorg/slf4j/helpers/MessageFormatter;->isEscapedDelimeter(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 195
    move-object v7, v0

    move v8, v4

    invoke-static {v7, v8}, Lorg/slf4j/helpers/MessageFormatter;->isDoubleEscaped(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 196
    add-int/lit8 v6, v6, -0x1

    .line 197
    move-object v7, v5

    move-object v8, v0

    move v9, v3

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 198
    move-object v7, v5

    const/16 v8, 0x7b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 199
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v3, v7

    .line 180
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 204
    :cond_4
    move-object v7, v5

    move-object v8, v0

    move v9, v3

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    move-object v7, v5

    move-object v8, v1

    move v9, v6

    aget-object v8, v8, v9

    new-instance v9, Ljava/util/HashMap;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v8, v9}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    .line 206
    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v3, v7

    goto :goto_2

    .line 210
    :cond_5
    move-object v7, v5

    move-object v8, v0

    move v9, v3

    move v10, v4

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 211
    move-object v7, v5

    move-object v8, v1

    move v9, v6

    aget-object v8, v8, v9

    new-instance v9, Ljava/util/HashMap;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v8, v9}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    .line 212
    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v3, v7

    goto :goto_2

    .line 217
    .end local v4    # "j":I
    :cond_6
    move-object v7, v5

    move-object v8, v0

    move v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 218
    new-instance v7, Lorg/slf4j/helpers/FormattingTuple;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v7

    goto/16 :goto_0
.end method

.method private static booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V
    .locals 7

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "a":[Z
    move-object v4, v0

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 306
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 307
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 308
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    move v4, v3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    .line 310
    move-object v4, v0

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 307
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    :cond_1
    move-object v4, v0

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 313
    return-void
.end method

.method private static byteArrayAppend(Ljava/lang/StringBuilder;[B)V
    .locals 7

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "a":[B
    move-object v4, v0

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 318
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 319
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 320
    move v4, v3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    .line 321
    move-object v4, v0

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    :cond_1
    move-object v4, v0

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 324
    return-void
.end method

.method private static charArrayAppend(Ljava/lang/StringBuilder;[C)V
    .locals 7

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "a":[C
    move-object v4, v0

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 328
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 329
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 330
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 331
    move v4, v3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    .line 332
    move-object v4, v0

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 329
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_1
    move-object v4, v0

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 335
    return-void
.end method

.method private static deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "seenMap":Ljava/util/Map;, "Ljava/util/Map<[Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 245
    move-object v3, v0

    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 246
    .line 273
    :goto_0
    return-void

    .line 248
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 273
    :goto_1
    goto :goto_0

    .line 253
    :cond_1
    move-object v3, v1

    instance-of v3, v3, [Z

    if-eqz v3, :cond_2

    .line 254
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Z

    check-cast v4, [Z

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V

    goto :goto_1

    .line 255
    :cond_2
    move-object v3, v1

    instance-of v3, v3, [B

    if-eqz v3, :cond_3

    .line 256
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->byteArrayAppend(Ljava/lang/StringBuilder;[B)V

    goto :goto_1

    .line 257
    :cond_3
    move-object v3, v1

    instance-of v3, v3, [C

    if-eqz v3, :cond_4

    .line 258
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [C

    check-cast v4, [C

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->charArrayAppend(Ljava/lang/StringBuilder;[C)V

    goto :goto_1

    .line 259
    :cond_4
    move-object v3, v1

    instance-of v3, v3, [S

    if-eqz v3, :cond_5

    .line 260
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [S

    check-cast v4, [S

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->shortArrayAppend(Ljava/lang/StringBuilder;[S)V

    goto :goto_1

    .line 261
    :cond_5
    move-object v3, v1

    instance-of v3, v3, [I

    if-eqz v3, :cond_6

    .line 262
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [I

    check-cast v4, [I

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->intArrayAppend(Ljava/lang/StringBuilder;[I)V

    goto :goto_1

    .line 263
    :cond_6
    move-object v3, v1

    instance-of v3, v3, [J

    if-eqz v3, :cond_7

    .line 264
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [J

    check-cast v4, [J

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->longArrayAppend(Ljava/lang/StringBuilder;[J)V

    goto :goto_1

    .line 265
    :cond_7
    move-object v3, v1

    instance-of v3, v3, [F

    if-eqz v3, :cond_8

    .line 266
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [F

    check-cast v4, [F

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->floatArrayAppend(Ljava/lang/StringBuilder;[F)V

    goto :goto_1

    .line 267
    :cond_8
    move-object v3, v1

    instance-of v3, v3, [D

    if-eqz v3, :cond_9

    .line 268
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [D

    check-cast v4, [D

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->doubleArrayAppend(Ljava/lang/StringBuilder;[D)V

    goto :goto_1

    .line 270
    :cond_9
    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lorg/slf4j/helpers/MessageFormatter;->objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method private static doubleArrayAppend(Ljava/lang/StringBuilder;[D)V
    .locals 8

    .prologue
    .line 382
    move-object v1, p0

    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v2, p1

    .local v2, "a":[D
    move-object v5, v1

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 383
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 384
    .local v3, "len":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 385
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 386
    move v5, v4

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_0

    .line 387
    move-object v5, v1

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 384
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    :cond_1
    move-object v5, v1

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 390
    return-void
.end method

.method private static floatArrayAppend(Ljava/lang/StringBuilder;[F)V
    .locals 7

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "a":[F
    move-object v4, v0

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 372
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 373
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 374
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 375
    move v4, v3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    .line 376
    move-object v4, v0

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 373
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_1
    move-object v4, v0

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 379
    return-void
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "messagePattern":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "messagePattern":Ljava/lang/String;
    return-object v0
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 9

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "messagePattern":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "messagePattern":Ljava/lang/String;
    return-object v0
.end method

.method public static getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 5

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "argArray":[Ljava/lang/Object;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    array-length v2, v2

    if-nez v2, :cond_1

    .line 402
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 410
    .end local v0    # "argArray":[Ljava/lang/Object;
    .local v1, "lastEntry":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 405
    .end local v1    # "lastEntry":Ljava/lang/Object;
    .restart local v0    # "argArray":[Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object v1, v2

    .line 406
    .restart local v1    # "lastEntry":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 407
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    move-object v0, v2

    goto :goto_0

    .line 410
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private static intArrayAppend(Ljava/lang/StringBuilder;[I)V
    .locals 7

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "a":[I
    move-object v4, v0

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 351
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 352
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 353
    move v4, v3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    .line 354
    move-object v4, v0

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 351
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 356
    :cond_1
    move-object v4, v0

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    return-void
.end method

.method static final isDoubleEscaped(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "messagePattern":Ljava/lang/String;
    move v1, p1

    .local v1, "delimeterStartIndex":I
    move v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 236
    const/4 v2, 0x1

    move v0, v2

    .line 238
    .end local v0    # "messagePattern":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "messagePattern":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method static final isEscapedDelimeter(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "messagePattern":Ljava/lang/String;
    move v1, p1

    .local v1, "delimeterStartIndex":I
    move v3, v1

    if-nez v3, :cond_0

    .line 224
    const/4 v3, 0x0

    move v0, v3

    .line 230
    .end local v0    # "messagePattern":Ljava/lang/String;
    :goto_0
    return v0

    .line 226
    .restart local v0    # "messagePattern":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 227
    .local v2, "potentialEscape":C
    move v3, v2

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 228
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 230
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private static longArrayAppend(Ljava/lang/StringBuilder;[J)V
    .locals 8

    .prologue
    .line 360
    move-object v1, p0

    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v2, p1

    .local v2, "a":[J
    move-object v5, v1

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 361
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 362
    .local v3, "len":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 363
    move-object v5, v1

    move-object v6, v2

    move v7, v4

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    move v5, v4

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_0

    .line 365
    move-object v5, v1

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 362
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    :cond_1
    move-object v5, v1

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    return-void
.end method

.method private static objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;
    move-object v2, p2

    .local v2, "seenMap":Ljava/util/Map;, "Ljava/util/Map<[Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v5, v0

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 288
    move-object v5, v2

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 289
    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 290
    move-object v5, v1

    array-length v5, v5

    move v3, v5

    .line 291
    .local v3, "len":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 292
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    .line 293
    move v5, v4

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_0

    .line 294
    move-object v5, v0

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 291
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 297
    :cond_1
    move-object v5, v2

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 298
    .line 301
    .end local v3    # "len":I
    .end local v4    # "i":I
    :goto_1
    move-object v5, v0

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 302
    return-void

    .line 299
    :cond_2
    move-object v5, v0

    const-string/jumbo v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_1
.end method

.method private static safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 278
    .local v2, "oAsString":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 282
    .line 284
    .end local v2    # "oAsString":Ljava/lang/String;
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 280
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SLF4J: Failed toString() invocation on an object of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    move-object v3, v0

    const-string/jumbo v4, "[FAILED toString()]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method private static shortArrayAppend(Ljava/lang/StringBuilder;[S)V
    .locals 7

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "sbuf":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "a":[S
    move-object v4, v0

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 339
    move-object v4, v1

    array-length v4, v4

    move v2, v4

    .line 340
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 341
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    aget-short v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 342
    move v4, v3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    .line 343
    move-object v4, v0

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 340
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_1
    move-object v4, v0

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 346
    return-void
.end method

.method public static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "argArray":[Ljava/lang/Object;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 423
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "non-sensical empty or null argument array"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 426
    :cond_1
    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    .line 428
    .local v1, "trimmedLen":I
    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 430
    .local v2, "trimmed":[Ljava/lang/Object;
    move v3, v1

    if-lez v3, :cond_2

    .line 431
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    :cond_2
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "argArray":[Ljava/lang/Object;
    return-object v0
.end method
