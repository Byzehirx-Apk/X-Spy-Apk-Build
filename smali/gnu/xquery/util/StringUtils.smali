.class public Lgnu/xquery/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static ERROR_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "<error>"

    sput-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/StringUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 9

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "code":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    sget-object v4, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/math/IntNum;

    move-object v2, v4

    .line 340
    .local v2, "I":Lgnu/math/IntNum;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/IntNum;->intValue()I

    move-result v4

    move v3, v4

    .line 341
    .local v3, "i":I
    move v4, v3

    if-lez v4, :cond_1

    move v4, v3

    const v5, 0xd7ff

    if-le v4, v5, :cond_2

    move v4, v3

    const v5, 0xe000

    if-lt v4, v5, :cond_1

    move v4, v3

    const v5, 0xfffd

    if-le v4, v5, :cond_0

    move v4, v3

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_1

    :cond_0
    move v4, v3

    const v5, 0x10ffff

    if-le v4, v5, :cond_2

    .line 344
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "codepoints-to-string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a valid XML character [FOCH0001]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 345
    :cond_2
    move v4, v3

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_3

    .line 347
    move-object v4, v1

    move v5, v3

    const/high16 v6, 0x10000

    sub-int/2addr v5, v6

    const/16 v6, 0xa

    shr-int/lit8 v5, v5, 0xa

    const v6, 0xd800

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 348
    move v4, v3

    const/16 v5, 0x3ff

    and-int/lit16 v4, v4, 0x3ff

    const v5, 0xdc00

    add-int/2addr v4, v5

    move v3, v4

    .line 350
    :cond_3
    move-object v4, v1

    move v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 351
    return-void
.end method

.method static asDouble(Ljava/lang/Object;)D
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/Number;

    if-nez v1, :cond_0

    .line 59
    move-object v1, v0

    invoke-static {v1}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 60
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "value":Ljava/lang/Object;
    return-wide v0
.end method

.method public static codepointEqual(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v4, v0

    const-string/jumbo v5, "codepoint-equal"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 578
    .local v2, "str1":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "codepoint-equal"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 579
    .local v3, "str2":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v3

    if-nez v4, :cond_1

    .line 580
    :cond_0
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    .line 581
    .end local v0    # "arg1":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_1
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static codepointsToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 356
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 367
    .end local v0    # "arg":Ljava/lang/Object;
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    :goto_0
    return-object v0

    .line 357
    .end local v1    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 358
    .restart local v1    # "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v0

    instance-of v4, v4, Lgnu/mapping/Values;

    if-eqz v4, :cond_2

    .line 360
    move-object v4, v0

    check-cast v4, Lgnu/mapping/Values;

    move-object v2, v4

    .line 361
    .local v2, "vals":Lgnu/mapping/Values;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/Values;->startPos()I

    move-result v4

    move v3, v4

    .line 362
    .local v3, "ipos":I
    :goto_1
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v4

    move v6, v4

    move v4, v6

    move v5, v6

    move v3, v5

    if-eqz v4, :cond_1

    .line 363
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 364
    .line 367
    .end local v2    # "vals":Lgnu/mapping/Values;
    .end local v3    # "ipos":I
    :cond_1
    :goto_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 366
    :cond_2
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_2
.end method

.method static coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "functionName":Ljava/lang/String;
    move v2, p2

    .local v2, "iarg":I
    move-object v3, p3

    .local v3, "onEmpty":Ljava/lang/String;
    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/xml/KNode;

    if-eqz v4, :cond_0

    .line 28
    move-object v4, v0

    invoke-static {v4}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 29
    :cond_0
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_1

    move-object v4, v0

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v3

    sget-object v5, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-eq v4, v5, :cond_2

    .line 30
    move-object v4, v3

    move-object v0, v4

    .line 41
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v4, v0

    instance-of v4, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v4, :cond_3

    move-object v4, v0

    instance-of v4, v4, Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    move-object v4, v0

    instance-of v4, v4, Ljava/net/URI;

    if-nez v4, :cond_3

    move-object v4, v0

    instance-of v4, v4, Lgnu/text/Path;

    if-eqz v4, :cond_4

    .line 41
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 42
    :cond_4
    new-instance v4, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    move v7, v2

    move-object v8, v0

    move-object v9, v3

    sget-object v10, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-ne v9, v10, :cond_5

    const-string/jumbo v9, "xs:string"

    :goto_1
    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v4

    :cond_5
    const-string/jumbo v9, "xs:string?"

    goto :goto_1
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "val1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "val2":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "coll":Lgnu/xquery/util/NamedCollator;
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_0

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 316
    :cond_0
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    .line 320
    .end local v0    # "val1":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 317
    .restart local v0    # "val1":Ljava/lang/Object;
    :cond_1
    move-object v4, v2

    if-nez v4, :cond_2

    .line 318
    sget-object v4, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    move-object v2, v4

    .line 319
    :cond_2
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 320
    .local v3, "ret":I
    move v4, v3

    if-gez v4, :cond_3

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v4

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_3
    move v4, v3

    if-lez v4, :cond_4

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v4

    goto :goto_1
.end method

.method public static concat$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v9, v0

    const-string/jumbo v10, "concat"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .line 293
    move-object v9, v0

    invoke-static {v9}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 294
    .local v3, "str1":Ljava/lang/String;
    move-object v9, v1

    const-string/jumbo v10, "concat"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    .line 295
    move-object v9, v1

    invoke-static {v9}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 297
    .local v4, "str2":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    .line 301
    .local v5, "result":Ljava/lang/StringBuilder;
    move-object v9, v5

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 302
    move-object v9, v2

    array-length v9, v9

    move v6, v9

    .line 303
    .local v6, "count":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    .line 305
    move-object v9, v2

    move v10, v7

    aget-object v9, v9, v10

    const-string/jumbo v10, "concat"

    move v11, v7

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    invoke-static {v9, v10, v11}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 306
    .local v8, "arg":Ljava/lang/Object;
    move-object v9, v5

    move-object v10, v8

    invoke-static {v10}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 303
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 308
    .end local v8    # "arg":Ljava/lang/Object;
    :cond_0
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "arg1":Ljava/lang/Object;
    return-object v0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "contain":Ljava/lang/Object;
    move-object v4, v0

    const-string/jumbo v5, "contains"

    const/4 v6, 0x1

    const-string/jumbo v7, ""

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 247
    .local v2, "s":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "contains"

    const/4 v6, 0x2

    const-string/jumbo v7, ""

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 249
    .local v3, "c":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v4

    .end local v0    # "str":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "str":Ljava/lang/Object;
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static encodeForUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    const-string/jumbo v3, "encode-for-uri"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    invoke-static {v2, v3, v4, v5}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 373
    .local v1, "str":Ljava/lang/String;
    move-object v2, v1

    const/16 v3, 0x55

    invoke-static {v2, v3}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static endsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "with":Ljava/lang/Object;
    move-object v4, v0

    const-string/jumbo v5, "ends-with"

    const/4 v6, 0x1

    const-string/jumbo v7, ""

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 263
    .local v2, "s":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "ends-with"

    const/4 v6, 0x2

    const-string/jumbo v7, ""

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 264
    .local v3, "w":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v4

    .end local v0    # "str":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "str":Ljava/lang/Object;
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static escapeHtmlUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    const-string/jumbo v3, "escape-html-uri"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    invoke-static {v2, v3, v4, v5}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 385
    .local v1, "str":Ljava/lang/String;
    move-object v2, v1

    const/16 v3, 0x48

    invoke-static {v2, v3}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static iriToUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v2, v0

    const-string/jumbo v3, "iri-to-uru"

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    invoke-static {v2, v3, v4, v5}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 379
    .local v1, "str":Ljava/lang/String;
    move-object v2, v1

    const/16 v3, 0x49

    invoke-static {v2, v3}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static lowerCase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v1, v0

    const-string/jumbo v2, "lower-case"

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    invoke-static {v1, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "node":Ljava/lang/Object;
    return-object v0
.end method

.method public static makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 14

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "pattern":Ljava/lang/String;
    move-object v1, p1

    .local v1, "flags":Ljava/lang/String;
    const/4 v10, 0x0

    move v2, v10

    .line 424
    .local v2, "fl":I
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v3, v10

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v10, v3

    if-ltz v10, :cond_5

    .line 426
    move-object v10, v1

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v4, v10

    .line 427
    .local v4, "ch":C
    move v10, v4

    sparse-switch v10, :sswitch_data_0

    .line 461
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string/jumbo v12, "unknown \'replace\' flag"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 430
    :sswitch_0
    move v10, v2

    const/16 v11, 0x42

    or-int/lit8 v10, v10, 0x42

    move v2, v10

    .line 463
    :goto_1
    goto :goto_0

    .line 433
    :sswitch_1
    move v10, v2

    const/16 v11, 0x20

    or-int/lit8 v10, v10, 0x20

    move v2, v10

    .line 434
    goto :goto_1

    .line 436
    :sswitch_2
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v10

    .line 437
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v6, v10

    .line 438
    .local v6, "plen":I
    const/4 v10, 0x0

    move v7, v10

    .line 439
    .local v7, "inBracket":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "j":I
    :goto_2
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_4

    .line 441
    move-object v10, v0

    move v11, v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v9, v10

    .line 442
    .local v9, "pch":C
    move v10, v9

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_1

    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_1

    .line 444
    move-object v10, v5

    move v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 445
    move-object v10, v0

    move v11, v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v9, v10

    .line 453
    :cond_0
    :goto_3
    move-object v10, v5

    move v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 454
    goto :goto_2

    .line 447
    :cond_1
    move v10, v9

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_2

    .line 448
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 449
    :cond_2
    move v10, v9

    const/16 v11, 0x5d

    if-ne v10, v11, :cond_3

    .line 450
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 451
    :cond_3
    move v10, v7

    if-nez v10, :cond_0

    move v10, v9

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 452
    goto :goto_2

    .line 455
    .end local v9    # "pch":C
    :cond_4
    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 456
    goto :goto_1

    .line 458
    .end local v5    # "sbuf":Ljava/lang/StringBuffer;
    .end local v6    # "plen":I
    .end local v7    # "inBracket":I
    .end local v8    # "j":I
    :sswitch_3
    move v10, v2

    const/16 v11, 0x8

    or-int/lit8 v10, v10, 0x8

    move v2, v10

    .line 459
    goto :goto_1

    .line 465
    .end local v4    # "ch":C
    :cond_5
    move-object v10, v0

    const-string/jumbo v11, "{Is"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_a

    .line 467
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v10

    .line 468
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v4, v10

    .line 469
    .local v4, "plen":I
    const/4 v10, 0x0

    move v5, v10

    .local v5, "j":I
    :goto_4
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_9

    .line 471
    move-object v10, v0

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v6, v10

    .line 472
    .local v6, "pch":C
    move v10, v6

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_8

    move v10, v5

    const/4 v11, 0x4

    add-int/lit8 v10, v10, 0x4

    move v11, v4

    if-ge v10, v11, :cond_8

    .line 474
    move-object v10, v3

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 475
    move-object v10, v0

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v6, v10

    .line 476
    move-object v10, v3

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 477
    move v10, v6

    const/16 v11, 0x70

    if-eq v10, v11, :cond_6

    move v10, v6

    const/16 v11, 0x50

    if-ne v10, v11, :cond_7

    :cond_6
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x7b

    if-ne v10, v11, :cond_7

    move-object v10, v0

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_7

    move-object v10, v0

    move v11, v5

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x73

    if-ne v10, v11, :cond_7

    .line 482
    move-object v10, v3

    const/16 v11, 0x7b

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 483
    move-object v10, v3

    const/16 v11, 0x49

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 484
    move-object v10, v3

    const/16 v11, 0x6e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 485
    add-int/lit8 v5, v5, 0x3

    .line 490
    :cond_7
    :goto_5
    goto :goto_4

    .line 489
    :cond_8
    move-object v10, v3

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_5

    .line 491
    .end local v6    # "pch":C
    :cond_9
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 493
    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    .end local v4    # "plen":I
    .end local v5    # "j":I
    :cond_a
    move-object v10, v0

    move v11, v2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "pattern":Ljava/lang/String;
    return-object v0

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_3
        0x73 -> :sswitch_1
        0x78 -> :sswitch_2
    .end sparse-switch
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "input":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lgnu/xquery/util/StringUtils;->matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "input":Ljava/lang/Object;
    return v0
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, p2

    .local v2, "flags":Ljava/lang/String;
    move-object v4, v0

    const-string/jumbo v5, "matches"

    const/4 v6, 0x1

    const-string/jumbo v7, ""

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 506
    .local v3, "str":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    move v0, v4

    .end local v0    # "arg":Ljava/lang/Object;
    return v0
.end method

.method public static normalizeSpace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v7, v0

    const-string/jumbo v8, "normalize-space"

    const/4 v9, 0x1

    const-string/jumbo v10, ""

    invoke-static {v7, v8, v9, v10}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 391
    .local v1, "str":Ljava/lang/String;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v7

    .line 392
    .local v2, "len":I
    const/4 v7, 0x0

    move-object v3, v7

    .line 393
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    move v4, v7

    .line 394
    .local v4, "skipped":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_7

    .line 396
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 397
    .local v6, "ch":C
    move v7, v6

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 399
    move-object v7, v3

    if-nez v7, :cond_0

    move v7, v4

    if-nez v7, :cond_0

    move v7, v5

    if-lez v7, :cond_0

    .line 400
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 401
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 394
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 405
    :cond_2
    move v7, v4

    if-lez v7, :cond_4

    .line 407
    move-object v7, v3

    if-eqz v7, :cond_5

    .line 408
    move-object v7, v3

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 411
    :cond_3
    :goto_2
    const/4 v7, 0x0

    move v4, v7

    .line 413
    :cond_4
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 414
    move-object v7, v3

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_1

    .line 409
    :cond_5
    move v7, v4

    const/4 v8, 0x1

    if-gt v7, v8, :cond_6

    move v7, v5

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    move-object v7, v1

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    .line 410
    :cond_6
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v7

    goto :goto_2

    .line 417
    .end local v6    # "ch":C
    :cond_7
    move-object v7, v3

    if-eqz v7, :cond_8

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object v0, v7

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_8
    move v7, v4

    if-lez v7, :cond_9

    const-string/jumbo v7, ""

    goto :goto_3

    :cond_9
    move-object v7, v1

    goto :goto_3
.end method

.method public static normalizeUnicode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    const-string/jumbo v2, "NFC"

    invoke-static {v1, v2}, Lgnu/xquery/util/StringUtils;->normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "form":Ljava/lang/String;
    move-object v3, v0

    const-string/jumbo v4, "normalize-unicode"

    const/4 v5, 0x1

    const-string/jumbo v6, ""

    invoke-static {v3, v4, v5, v6}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 592
    .local v2, "str":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 593
    const-string/jumbo v3, ""

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0

    .line 620
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "normalize-unicode: unicode string normalization not available"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "input":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, p2

    .local v2, "replacement":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const-string/jumbo v6, ""

    invoke-static {v3, v4, v5, v6}, Lgnu/xquery/util/StringUtils;->replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "input":Ljava/lang/Object;
    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, p2

    .local v2, "replacement":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "flags":Ljava/lang/String;
    move-object v8, v0

    const-string/jumbo v9, "replace"

    const/4 v10, 0x1

    const-string/jumbo v11, ""

    invoke-static {v8, v9, v10, v11}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 523
    .local v4, "str":Ljava/lang/String;
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    .line 524
    .local v5, "rlen":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 526
    move-object v8, v2

    move v9, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 527
    .local v7, "rch":C
    move v8, v7

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_1

    .line 529
    move v8, v6

    move v9, v7

    if-ge v8, v9, :cond_0

    move-object v8, v2

    move v9, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v7, v9

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_1

    move v8, v7

    const/16 v9, 0x24

    if-eq v8, v9, :cond_1

    .line 531
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "invalid replacement string [FORX0004]"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 533
    :cond_1
    goto :goto_0

    .line 534
    .end local v7    # "rch":C
    :cond_2
    move-object v8, v1

    move-object v9, v3

    invoke-static {v8, v9}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method public static startsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "with":Ljava/lang/Object;
    move-object v4, v0

    const-string/jumbo v5, "starts-with"

    const/4 v6, 0x1

    const-string/jumbo v7, ""

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 255
    .local v2, "s":Ljava/lang/String;
    move-object v4, v1

    const-string/jumbo v5, "starts-with"

    const/4 v6, 0x2

    const-string/jumbo v7, ""

    invoke-static {v4, v5, v6, v7}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 257
    .local v3, "w":Ljava/lang/String;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v4

    .end local v0    # "str":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "str":Ljava/lang/Object;
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static stringJoin(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "strseq":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "join":Ljava/lang/Object;
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v9

    .line 270
    .local v2, "s":Ljava/lang/StringBuffer;
    move-object v9, v1

    const-string/jumbo v10, "string-join"

    const/4 v11, 0x2

    sget-object v12, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    invoke-static {v9, v10, v11, v12}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 271
    .local v3, "glue":Ljava/lang/String;
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v4, v9

    .line 272
    .local v4, "glen":I
    const/4 v9, 0x0

    move v5, v9

    .line 273
    .local v5, "index":I
    const/4 v9, 0x0

    move v7, v9

    .line 275
    .local v7, "started":Z
    :goto_0
    move-object v9, v0

    move v10, v5

    invoke-static {v9, v10}, Lgnu/mapping/Values;->nextIndex(Ljava/lang/Object;I)I

    move-result v9

    move v13, v9

    move v9, v13

    move v10, v13

    move v6, v10

    .local v6, "next":I
    if-ltz v9, :cond_2

    .line 277
    move-object v9, v0

    move v10, v5

    invoke-static {v9, v10}, Lgnu/mapping/Values;->nextValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 278
    .local v8, "obj":Ljava/lang/Object;
    move-object v9, v8

    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v9, v10, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    move v9, v7

    if-eqz v9, :cond_1

    move v9, v4

    if-lez v9, :cond_1

    .line 281
    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 282
    :cond_1
    move-object v9, v2

    move-object v10, v8

    invoke-static {v10}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 283
    const/4 v9, 0x1

    move v7, v9

    .line 284
    move v9, v6

    move v5, v9

    .line 285
    goto :goto_0

    .line 287
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_2
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "strseq":Ljava/lang/Object;
    return-object v0
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v6, v0

    const-string/jumbo v7, "string-length"

    const/4 v8, 0x1

    const-string/jumbo v9, ""

    invoke-static {v6, v7, v8, v9}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 126
    .local v1, "s":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 127
    .local v2, "slen":I
    const/4 v6, 0x0

    move v3, v6

    .line 128
    .local v3, "len":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 130
    move-object v6, v1

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 131
    .local v5, "ch":C
    move v6, v5

    const v7, 0xd800

    if-lt v6, v7, :cond_0

    move v6, v5

    const v7, 0xdc00

    if-ge v6, v7, :cond_0

    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 134
    goto :goto_0

    .line 135
    .end local v5    # "ch":C
    :cond_1
    move v6, v3

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "str":Ljava/lang/Object;
    return-object v0
.end method

.method public static stringPad(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "padcount":Ljava/lang/Object;
    move-object v7, v1

    invoke-static {v7}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move v2, v7

    .line 229
    .local v2, "count":I
    move v7, v2

    if-gtz v7, :cond_1

    .line 231
    move v7, v2

    if-nez v7, :cond_0

    .line 232
    const-string/jumbo v7, ""

    move-object v0, v7

    .line 241
    .end local v0    # "str":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 233
    .restart local v0    # "str":Ljava/lang/Object;
    :cond_0
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Invalid string-pad count"

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 236
    :cond_1
    move-object v7, v0

    const-string/jumbo v8, "string-pad"

    const/4 v9, 0x1

    const-string/jumbo v10, ""

    invoke-static {v7, v8, v9, v10}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 237
    .local v3, "sv":Ljava/lang/String;
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    .line 238
    .local v4, "slen":I
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move v9, v2

    move v10, v4

    mul-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v5, v7

    .line 239
    .local v5, "s":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_2

    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 241
    :cond_2
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public static stringToCodepoints$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 11

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v7, v0

    const-string/jumbo v8, "string-to-codepoints"

    const/4 v9, 0x1

    const-string/jumbo v10, ""

    invoke-static {v7, v8, v9, v10}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 326
    .local v2, "str":Ljava/lang/String;
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v3, v7

    .line 327
    .local v3, "len":I
    move-object v7, v1

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v4, v7

    .line 328
    .local v4, "out":Lgnu/lists/Consumer;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 330
    move-object v7, v2

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 331
    .local v6, "ch":I
    move v7, v6

    const v8, 0xd800

    if-lt v7, v8, :cond_0

    move v7, v6

    const v8, 0xdc00

    if-ge v7, v8, :cond_0

    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 332
    move v7, v6

    const v8, 0xd800

    sub-int/2addr v7, v8

    const/16 v8, 0x400

    mul-int/lit16 v7, v7, 0x400

    move-object v8, v2

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v9, 0xdc00

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    const/high16 v8, 0x10000

    add-int/2addr v7, v8

    move v6, v7

    .line 333
    :cond_0
    move-object v7, v4

    move v8, v6

    invoke-interface {v7, v8}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 334
    goto :goto_0

    .line 335
    .end local v6    # "ch":I
    :cond_1
    return-void
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "str":Ljava/lang/Object;
    move-object v2, p1

    .local v2, "start":Ljava/lang/Object;
    move-object v10, v2

    invoke-static {v10}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    move-wide v3, v10

    .line 66
    .local v3, "d1":D
    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 67
    const-string/jumbo v10, ""

    move-object v1, v10

    .line 82
    .end local v1    # "str":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 68
    .restart local v1    # "str":Ljava/lang/Object;
    :cond_0
    move-wide v10, v3

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    double-to-int v10, v10

    move v5, v10

    .line 69
    .local v5, "i":I
    move v10, v5

    if-gez v10, :cond_1

    .line 70
    const/4 v10, 0x0

    move v5, v10

    .line 71
    :cond_1
    move-object v10, v1

    const-string/jumbo v11, "substring"

    const/4 v12, 0x1

    const-string/jumbo v13, ""

    invoke-static {v10, v11, v12, v13}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 72
    .local v6, "s":Ljava/lang/String;
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    .line 73
    .local v7, "len":I
    const/4 v10, 0x0

    move v8, v10

    .line 74
    .local v8, "offset":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    move v10, v5

    if-ltz v10, :cond_4

    .line 76
    move v10, v8

    move v11, v7

    if-lt v10, v11, :cond_2

    .line 77
    const-string/jumbo v10, ""

    move-object v1, v10

    goto :goto_0

    .line 78
    :cond_2
    move-object v10, v6

    move v11, v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v9, v10

    .line 79
    .local v9, "ch":C
    move v10, v9

    const v11, 0xd800

    if-lt v10, v11, :cond_3

    move v10, v9

    const v11, 0xdc00

    if-ge v10, v11, :cond_3

    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_3

    .line 80
    add-int/lit8 v8, v8, 0x1

    .line 81
    :cond_3
    goto :goto_1

    .line 82
    .end local v9    # "ch":C
    :cond_4
    move-object v10, v6

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .prologue
    .line 87
    move-object/from16 v3, p0

    .local v3, "str":Ljava/lang/Object;
    move-object/from16 v4, p1

    .local v4, "start":Ljava/lang/Object;
    move-object/from16 v5, p2

    .local v5, "length":Ljava/lang/Object;
    move-object/from16 v16, v3

    const-string/jumbo v17, "substring"

    const/16 v18, 0x1

    const-string/jumbo v19, ""

    invoke-static/range {v16 .. v19}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    .line 88
    .local v6, "s":Ljava/lang/String;
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v7, v16

    .line 91
    .local v7, "len":I
    move-object/from16 v16, v4

    invoke-static/range {v16 .. v16}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v8, v16

    .line 92
    .local v8, "d1":D
    move-wide/from16 v16, v8

    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v18

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v10, v16

    .line 93
    .local v10, "d2":D
    move-wide/from16 v16, v8

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_0

    .line 94
    const-wide/16 v16, 0x0

    move-wide/from16 v8, v16

    .line 95
    :cond_0
    move-wide/from16 v16, v10

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_1

    .line 96
    move/from16 v16, v7

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v10, v16

    .line 97
    :cond_1
    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_2

    .line 98
    const-string/jumbo v16, ""

    move-object/from16 v3, v16

    .line 120
    .end local v3    # "str":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 99
    .restart local v3    # "str":Ljava/lang/Object;
    :cond_2
    move-wide/from16 v16, v8

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v12, v16

    .line 100
    .local v12, "i1":I
    move-wide/from16 v16, v10

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v17, v12

    sub-int v16, v16, v17

    move/from16 v13, v16

    .line 101
    .local v13, "i2":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .line 102
    .local v14, "offset":I
    :goto_1
    add-int/lit8 v12, v12, -0x1

    move/from16 v16, v12

    if-ltz v16, :cond_5

    .line 104
    move/from16 v16, v14

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 105
    const-string/jumbo v16, ""

    move-object/from16 v3, v16

    goto :goto_0

    .line 106
    :cond_3
    move-object/from16 v16, v6

    move/from16 v17, v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v15, v16

    .line 107
    .local v15, "ch":C
    move/from16 v16, v15

    const v17, 0xd800

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    move/from16 v16, v15

    const v17, 0xdc00

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    move/from16 v16, v14

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 108
    add-int/lit8 v14, v14, 0x1

    .line 109
    :cond_4
    goto :goto_1

    .line 110
    .end local v15    # "ch":C
    :cond_5
    move/from16 v16, v14

    move/from16 v12, v16

    .line 111
    :goto_2
    add-int/lit8 v13, v13, -0x1

    move/from16 v16, v13

    if-ltz v16, :cond_8

    .line 113
    move/from16 v16, v14

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    .line 114
    const-string/jumbo v16, ""

    move-object/from16 v3, v16

    goto :goto_0

    .line 115
    :cond_6
    move-object/from16 v16, v6

    move/from16 v17, v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v15, v16

    .line 116
    .restart local v15    # "ch":C
    move/from16 v16, v15

    const v17, 0xd800

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_7

    move/from16 v16, v15

    const v17, 0xdc00

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    move/from16 v16, v14

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 117
    add-int/lit8 v14, v14, 0x1

    .line 118
    :cond_7
    goto :goto_2

    .line 119
    .end local v15    # "ch":C
    :cond_8
    move/from16 v16, v14

    move/from16 v13, v16

    .line 120
    move-object/from16 v16, v6

    move/from16 v17, v12

    move/from16 v18, v13

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, v16

    goto/16 :goto_0
.end method

.method public static substringAfter(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "find":Ljava/lang/Object;
    move-object v6, v0

    const-string/jumbo v7, "substring-after"

    const/4 v8, 0x1

    const-string/jumbo v9, ""

    invoke-static {v6, v7, v8, v9}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 153
    .local v2, "s":Ljava/lang/String;
    move-object v6, v1

    const-string/jumbo v7, "substring-after"

    const/4 v8, 0x2

    const-string/jumbo v9, ""

    invoke-static {v6, v7, v8, v9}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 154
    .local v3, "f":Ljava/lang/String;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 156
    .local v4, "flen":I
    move v6, v4

    if-nez v6, :cond_0

    .line 157
    move-object v6, v2

    move-object v0, v6

    .line 160
    .end local v0    # "str":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 159
    .restart local v0    # "str":Ljava/lang/Object;
    :cond_0
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 160
    .local v5, "start":I
    move v6, v5

    if-ltz v6, :cond_1

    move-object v6, v2

    move v7, v5

    move v8, v4

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ""

    goto :goto_1
.end method

.method public static substringBefore(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "str":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "find":Ljava/lang/Object;
    move-object v6, v0

    const-string/jumbo v7, "substring-before"

    const/4 v8, 0x1

    const-string/jumbo v9, ""

    invoke-static {v6, v7, v8, v9}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 141
    .local v2, "s":Ljava/lang/String;
    move-object v6, v1

    const-string/jumbo v7, "substring-before"

    const/4 v8, 0x2

    const-string/jumbo v9, ""

    invoke-static {v6, v7, v8, v9}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 142
    .local v3, "f":Ljava/lang/String;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 144
    .local v4, "flen":I
    move v6, v4

    if-nez v6, :cond_0

    .line 145
    const-string/jumbo v6, ""

    move-object v0, v6

    .line 147
    .end local v0    # "str":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 146
    .restart local v0    # "str":Ljava/lang/Object;
    :cond_0
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 147
    .local v5, "start":I
    move v6, v5

    if-ltz v6, :cond_1

    move-object v6, v2

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ""

    goto :goto_1
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .locals 7

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, ""

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lgnu/xquery/util/StringUtils;->tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V

    .line 543
    return-void
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .locals 16

    .prologue
    .line 549
    move-object/from16 v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "flags":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "ctx":Lgnu/mapping/CallContext;
    move-object v11, v0

    const-string/jumbo v12, "tokenize"

    const/4 v13, 0x1

    const-string/jumbo v14, ""

    invoke-static {v11, v12, v13, v14}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 550
    .local v4, "str":Ljava/lang/String;
    move-object v11, v3

    iget-object v11, v11, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v5, v11

    .line 551
    .local v5, "out":Lgnu/lists/Consumer;
    move-object v11, v1

    move-object v12, v2

    invoke-static {v11, v12}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    move-object v6, v11

    .line 552
    .local v6, "matcher":Ljava/util/regex/Matcher;
    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v7, v11

    .line 553
    .local v7, "len":I
    move v11, v7

    if-nez v11, :cond_0

    .line 554
    .line 573
    :goto_0
    return-void

    .line 555
    :cond_0
    const/4 v11, 0x0

    move v8, v11

    .line 558
    .local v8, "start":I
    :goto_1
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    move v9, v11

    .line 559
    .local v9, "matched":Z
    move v11, v9

    if-nez v11, :cond_1

    .line 561
    move-object v11, v5

    move-object v12, v4

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 562
    .line 573
    goto :goto_0

    .line 564
    :cond_1
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    move v10, v11

    .line 565
    .local v10, "end":I
    move-object v11, v5

    move-object v12, v4

    move v13, v8

    move v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 566
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    move v8, v11

    .line 567
    move v11, v8

    move v12, v10

    if-ne v11, v12, :cond_2

    .line 568
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string/jumbo v13, "pattern matches empty string"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 569
    :cond_2
    goto :goto_1
.end method

.method public static translate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .prologue
    .line 165
    move-object/from16 v2, p0

    .local v2, "str":Ljava/lang/Object;
    move-object/from16 v3, p1

    .local v3, "map":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "trans":Ljava/lang/Object;
    move-object/from16 v22, v2

    const-string/jumbo v23, "translate"

    const/16 v24, 0x1

    const-string/jumbo v25, ""

    invoke-static/range {v22 .. v25}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v5, v22

    .line 166
    .local v5, "sv":Ljava/lang/String;
    move-object/from16 v22, v3

    invoke-static/range {v22 .. v22}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v3, v22

    .line 167
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v22, v0

    if-nez v22, :cond_0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 168
    new-instance v22, Lgnu/mapping/WrongType;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const-string/jumbo v24, "translate"

    const/16 v25, 0x2

    move-object/from16 v26, v2

    const-string/jumbo v27, "xs:string"

    invoke-direct/range {v23 .. v27}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v22

    .line 169
    :cond_0
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v6, v22

    .line 170
    .local v6, "m":Ljava/lang/String;
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v7, v22

    .line 172
    .local v7, "mlen":I
    move-object/from16 v22, v4

    invoke-static/range {v22 .. v22}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v4, v22

    .line 173
    move-object/from16 v22, v4

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 174
    new-instance v22, Lgnu/mapping/WrongType;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const-string/jumbo v24, "translate"

    const/16 v25, 0x3

    move-object/from16 v26, v2

    const-string/jumbo v27, "xs:string"

    invoke-direct/range {v23 .. v27}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v22

    .line 175
    :cond_1
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v8, v22

    .line 177
    .local v8, "t":Ljava/lang/String;
    move/from16 v22, v7

    if-nez v22, :cond_2

    move-object/from16 v22, v5

    move-object/from16 v2, v22

    .line 223
    .end local v2    # "str":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 179
    .restart local v2    # "str":Ljava/lang/Object;
    :cond_2
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v9, v22

    .line 180
    .local v9, "slen":I
    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move/from16 v24, v9

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v10, v22

    .line 181
    .local v10, "s":Ljava/lang/StringBuffer;
    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v11, v22

    .line 184
    .local v11, "tlen":I
    const/16 v22, 0x0

    move/from16 v12, v22

    .local v12, "i":I
    :goto_1
    move/from16 v22, v12

    move/from16 v23, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 186
    move-object/from16 v22, v5

    move/from16 v23, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v13, v22

    .line 187
    .local v13, "c1":C
    const/16 v22, 0x0

    move/from16 v14, v22

    .line 188
    .local v14, "c2":C
    move/from16 v22, v13

    const v23, 0xd800

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    move/from16 v22, v13

    const v23, 0xdc00

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    move/from16 v22, v12

    move/from16 v23, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 189
    move-object/from16 v22, v5

    move/from16 v23, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v14, v22

    .line 190
    :cond_3
    const/16 v22, 0x0

    move/from16 v15, v22

    .line 191
    .local v15, "j":I
    const/16 v22, 0x0

    move/from16 v16, v22

    .local v16, "mi":I
    :goto_2
    move/from16 v22, v16

    move/from16 v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 193
    move-object/from16 v22, v6

    move/from16 v23, v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v17, v22

    .line 194
    .local v17, "m1":C
    const/16 v22, 0x0

    move/from16 v18, v22

    .line 195
    .local v18, "m2":C
    move/from16 v22, v17

    const v23, 0xd800

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    move/from16 v22, v17

    const v23, 0xdc00

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    move/from16 v22, v16

    move/from16 v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 196
    move-object/from16 v22, v6

    move/from16 v23, v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v18, v22

    .line 197
    :cond_4
    move/from16 v22, v17

    move/from16 v23, v13

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move/from16 v22, v18

    move/from16 v23, v14

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 199
    const/16 v22, 0x0

    move/from16 v19, v22

    .line 201
    .local v19, "ti":I
    :goto_3
    move/from16 v22, v19

    move/from16 v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    .line 202
    goto/16 :goto_1

    .line 203
    :cond_5
    move-object/from16 v22, v8

    move/from16 v23, v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v20, v22

    .line 204
    .local v20, "t1":C
    const/16 v22, 0x0

    move/from16 v21, v22

    .line 205
    .local v21, "t2":C
    move/from16 v22, v20

    const v23, 0xd800

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    move/from16 v22, v20

    const v23, 0xdc00

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    move/from16 v22, v19

    move/from16 v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 206
    move-object/from16 v22, v8

    move/from16 v23, v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v21, v22

    .line 207
    :cond_6
    move/from16 v22, v15

    if-nez v22, :cond_9

    .line 209
    move/from16 v22, v20

    move/from16 v13, v22

    .line 210
    move/from16 v22, v21

    move/from16 v14, v22

    .line 214
    .line 218
    .end local v17    # "m1":C
    .end local v18    # "m2":C
    .end local v19    # "ti":I
    .end local v20    # "t1":C
    .end local v21    # "t2":C
    :cond_7
    move-object/from16 v22, v10

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 219
    move/from16 v22, v14

    if-eqz v22, :cond_8

    .line 220
    move-object/from16 v22, v10

    move/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 221
    :cond_8
    goto/16 :goto_1

    .line 199
    .restart local v17    # "m1":C
    .restart local v18    # "m2":C
    .restart local v19    # "ti":I
    .restart local v20    # "t1":C
    .restart local v21    # "t2":C
    :cond_9
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 216
    .end local v19    # "ti":I
    .end local v20    # "t1":C
    .end local v21    # "t2":C
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 217
    goto/16 :goto_2

    .line 223
    .end local v13    # "c1":C
    .end local v14    # "c2":C
    .end local v15    # "j":I
    .end local v16    # "mi":I
    .end local v17    # "m1":C
    .end local v18    # "m2":C
    :cond_b
    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v2, v22

    goto/16 :goto_0
.end method

.method public static upperCase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "node":Ljava/lang/Object;
    move-object v1, v0

    const-string/jumbo v2, "upper-case"

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    invoke-static {v1, v2, v3, v4}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "node":Ljava/lang/Object;
    return-object v0
.end method
