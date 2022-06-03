.class public Lcom/google/appinventor/components/runtime/util/YailList;
.super Lgnu/lists/Pair;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v1, v2, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    sget-object v3, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    move-object v1, p0

    move-object v2, v1

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    .line 133
    move-object v2, v1

    check-cast v2, Lgnu/math/IntNum;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 139
    :goto_0
    return-object v1

    .line 134
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 135
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 136
    :cond_1
    const-class v2, Ljava/lang/Number;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->format(D)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 139
    :cond_2
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v0
.end method

.method public static makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {v1}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    move-object v0, v1

    .line 79
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    return-object v0
.end method

.method public static makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    move-object v0, v1

    .line 69
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    return-object v0
.end method

.method public static makeList(Ljava/util/Set;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .prologue
    .line 87
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-static {v1}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    move-object v0, v1

    .line 90
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    return-object v0
.end method

.method public static makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/lists/Pair;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v1

    move-object v0, v1

    .line 61
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getObject(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lgnu/lists/Pair;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_0

    .line 99
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 101
    :goto_0
    return-object v0

    .line 100
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/lists/LList;

    if-eqz v1, :cond_1

    .line 101
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v1, Lgnu/lists/LList;

    invoke-virtual {v1}, Lgnu/lists/LList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 103
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "YailList cannot be represented as an array"

    const-string/jumbo v4, "YailList Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 150
    move-object v0, p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 151
    const-string/jumbo v6, ""

    move-object v2, v6

    .line 152
    move-object v6, v1

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 153
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    move v3, v6

    .line 154
    const/4 v6, 0x1

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-gt v6, v7, :cond_0

    .line 155
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 156
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    const-string/jumbo v6, ","

    move-object v2, v6

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_0
    move-object v6, v1

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 161
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    return-object v0

    .line 164
    :catch_0
    move-exception v6

    new-instance v6, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "List failed to convert to JSON."

    const-string/jumbo v9, "JSON Creation Error."

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_0

    .line 182
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 184
    :goto_0
    return-object v0

    .line 183
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/lists/LList;

    if-eqz v1, :cond_1

    .line 184
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v1, Lgnu/lists/LList;

    invoke-virtual {v1}, Lgnu/lists/LList;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 186
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "YailList cannot be represented as a String"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 115
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    .line 116
    move v1, v5

    new-array v4, v4, [Ljava/lang/String;

    move-object v2, v4

    .line 117
    const/4 v4, 0x1

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-gt v4, v5, :cond_0

    .line 118
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_0
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method
