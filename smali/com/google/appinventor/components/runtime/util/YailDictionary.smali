.class public Lcom/google/appinventor/components/runtime/util/YailDictionary;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/YailDictionary$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/appinventor/components/runtime/util/YailObject",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public static alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 8

    .prologue
    .line 160
    move-object v0, p0

    new-instance v4, Ljava/util/LinkedHashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, v4

    .line 162
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/LList;

    invoke-virtual {v4}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    :goto_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 163
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 165
    move-object v2, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 166
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 168
    move-object v2, v5

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 171
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_1

    .line 172
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 174
    :cond_1
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 177
    goto :goto_0

    .line 179
    :cond_2
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    move-object v0, v4

    return-object v0
.end method

.method public static dictToAlist(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9

    .prologue
    .line 228
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 229
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v2, v3

    .line 230
    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 231
    goto :goto_0

    .line 232
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/Object;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 368
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 369
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v3, v4

    .line 378
    :goto_1
    move v4, v3

    move v5, v2

    sub-int/2addr v4, v5

    move v12, v4

    move v4, v12

    move v5, v12

    .line 379
    move v3, v5

    if-ltz v4, :cond_0

    move v4, v3

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v2

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    .line 381
    :cond_0
    :try_start_0
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/16 v6, 0xc81

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move v10, v3

    move v11, v2

    add-int/2addr v10, v11

    .line 382
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v0

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 385
    const-string/jumbo v4, "YailDictionary"

    const-string/jumbo v5, "Unable to serialize object as JSON"

    move-object v6, v0

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 386
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "JSON Error"

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 372
    :cond_2
    move-object v4, v1

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move v3, v4

    .line 376
    goto :goto_1

    .line 374
    :catch_1
    move-exception v4

    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/16 v6, 0xc82

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v1

    .line 375
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v4

    .line 389
    :cond_3
    move v4, v3

    move v0, v4

    return v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 10

    .prologue
    .line 183
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Object;

    move-object v1, v6

    .line 184
    const/4 v6, 0x0

    move v2, v6

    .line 185
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 186
    move-object v3, v7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 187
    const/4 v6, 0x0

    move v4, v6

    .line 188
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 190
    move-object v5, v7

    instance-of v6, v6, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_2

    .line 191
    move-object v6, v5

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    move-object v6, v1

    move v7, v2

    move-object v8, v5

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v8

    aput-object v8, v6, v7

    .line 193
    const/4 v6, 0x1

    move v4, v6

    .line 203
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 204
    goto :goto_0

    .line 195
    :cond_1
    move-object v6, v1

    move v7, v2

    move-object v8, v5

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    aput-object v8, v6, v7

    .line 196
    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    move-object v7, v5

    if-eq v6, v7, :cond_0

    .line 197
    const/4 v6, 0x1

    move v4, v6

    goto :goto_1

    .line 201
    :cond_2
    move-object v6, v1

    move v7, v2

    move-object v8, v5

    aput-object v8, v6, v7

    goto :goto_1

    .line 205
    :cond_3
    move v6, v4

    if-eqz v6, :cond_4

    .line 206
    move-object v6, v1

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    move-object v0, v6

    .line 208
    :goto_2
    return-object v0

    :cond_4
    move-object v6, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 141
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    :goto_0
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 144
    move-object v1, v3

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v2, :cond_0

    .line 145
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v2

    .line 155
    :goto_1
    return-object v0

    .line 148
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 149
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v2

    goto :goto_1

    .line 152
    :cond_1
    const/4 v2, 0x1

    move v1, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    move v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/LList;

    invoke-virtual {v3}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 313
    move-object v2, v4

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_1

    .line 314
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 315
    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 322
    :goto_1
    return-object v0

    .line 318
    :cond_0
    goto :goto_0

    .line 319
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 322
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 242
    move-object v3, v1

    :try_start_0
    instance-of v3, v3, Lgnu/lists/FString;

    if-eqz v3, :cond_1

    .line 243
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 258
    :goto_1
    return-object v0

    .line 240
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 245
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 246
    :cond_2
    move-object v3, v1

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 247
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 257
    .line 258
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 249
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 250
    const-string/jumbo v3, "YailDictionary"

    const-string/jumbo v4, "Unable to parse key as integer: "

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 251
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Unable to parse key as integer: "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NumberParseException"

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 253
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 254
    const-string/jumbo v3, "YailDictionary"

    const-string/jumbo v4, "Requested too large of an index: "

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 255
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Requested too large of an index: "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "IndexOutOfBoundsException"

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    move-object v5, v0

    if-eqz v5, :cond_0

    .line 329
    move-object v5, v2

    move-object v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 331
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .line 357
    :goto_0
    return-object v0

    .line 332
    :cond_1
    move-object v5, v0

    if-nez v5, :cond_2

    .line 333
    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    .line 336
    :cond_2
    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 337
    move-object v5, v1

    const/4 v6, 0x1

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 338
    move-object v5, v3

    sget-object v6, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    if-ne v5, v6, :cond_9

    .line 339
    move-object v5, v0

    .line 1302
    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 1303
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .line 2281
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 1303
    .line 339
    :goto_1
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 340
    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 341
    goto :goto_2

    .line 1304
    :cond_3
    move-object v5, v0

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_7

    .line 1305
    move-object v5, v0

    check-cast v5, Ljava/util/List;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 2286
    move-object v0, v6

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_6

    .line 2287
    move-object v5, v0

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2288
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 2289
    move-object v5, v0

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/LList;

    invoke-virtual {v5}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v5

    :goto_3
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 2290
    move-object v5, v3

    move-object v6, v4

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2291
    goto :goto_3

    .line 2292
    :cond_4
    move-object v5, v3

    goto :goto_1

    .line 2294
    :cond_5
    move-object v5, v0

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    goto :goto_1

    .line 2297
    :cond_6
    move-object v5, v0

    .line 1305
    goto :goto_1

    .line 1307
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 341
    .line 357
    :cond_8
    :goto_4
    move-object v5, v2

    move-object v0, v5

    goto/16 :goto_0

    .line 342
    :cond_9
    move-object v5, v0

    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_a

    .line 343
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    .line 344
    :cond_a
    move-object v5, v0

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_c

    move-object v5, v0

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 345
    move-object v5, v0

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 346
    move-object v3, v6

    if-eqz v5, :cond_b

    .line 347
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 349
    :cond_b
    goto :goto_4

    :cond_c
    move-object v5, v0

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_8

    .line 350
    move-object v5, v0

    check-cast v5, Ljava/util/List;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    move v3, v5

    .line 352
    move-object v5, v0

    :try_start_0
    check-cast v5, Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 355
    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_4
.end method

.method public static makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    return-object v0
.end method

.method public static makeDictionary(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    new-instance v4, Ljava/util/LinkedHashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, v4

    .line 122
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    :goto_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 123
    move-object v2, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 124
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    .line 126
    move-object v2, v5

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_1

    .line 127
    move-object v4, v2

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 130
    :cond_0
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 133
    :cond_1
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    move-object v0, v4

    return-object v0
.end method

.method public static makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    return-object v0
.end method

.method public static varargs makeDictionary([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 9

    .prologue
    .line 101
    move-object v0, p0

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x2

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "Expected an even number of key-value entries."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    move-object v1, v3

    .line 105
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 106
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 108
    :cond_1
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public static walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/YailObject",
            "<*>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_0

    .line 502
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 504
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 509
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_0

    .line 510
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {v2, v3}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 512
    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_0

    .line 518
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 520
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 553
    move-object v0, p0

    move v1, p1

    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 554
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 557
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 558
    move v4, v1

    if-nez v4, :cond_2

    .line 559
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, v4

    return-object v0

    .line 561
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 562
    goto :goto_0

    .line 565
    :cond_3
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v2, v4

    .line 265
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 266
    move-object v4, v2

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 267
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 268
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    move-object v4, v2

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 270
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 271
    move-object v4, v2

    check-cast v4, Ljava/util/List;

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 273
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    .line 277
    :goto_1
    return-object v0

    :cond_3
    move-object v4, v2

    move-object v0, v4

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailDictionary$a;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary$a;-><init>(Ljava/util/Iterator;)V

    move-object v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/FString;

    if-eqz v3, :cond_0

    .line 526
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 528
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lgnu/lists/FString;

    if-eqz v3, :cond_1

    .line 529
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 531
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_0

    .line 537
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 539
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public setPair(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    return-void
.end method

.method public setValueForKeyPath(Ljava/util/List;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v3, v5

    .line 471
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v5

    .line 474
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    .line 497
    :goto_0
    return-void

    .line 478
    :cond_0
    :goto_1
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 479
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 480
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 482
    move-object v5, v3

    move-object v6, v1

    move-object v3, v6

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    .line 2393
    move-object v1, v6

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v5, :cond_1

    .line 2394
    move-object v5, v1

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 482
    :goto_2
    move-object v3, v5

    goto :goto_1

    .line 2395
    :cond_1
    move-object v5, v1

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 2396
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    .line 2398
    :cond_2
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/16 v7, 0xc83

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    if-nez v11, :cond_3

    const-string/jumbo v11, "null"

    .line 2399
    :goto_3
    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v5

    .line 2398
    :cond_3
    move-object v11, v1

    .line 2399
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 484
    :cond_4
    move-object v5, v3

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v5, :cond_5

    .line 485
    move-object v5, v3

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 486
    :cond_5
    move-object v5, v3

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_6

    .line 487
    move-object v5, v3

    check-cast v5, Lgnu/lists/LList;

    .line 488
    move-object v6, v3

    check-cast v6, Ljava/util/List;

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/lists/LList;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/lists/SeqPosition;->set(Ljava/lang/Object;)V

    .line 489
    goto/16 :goto_1

    :cond_6
    move-object v5, v3

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_7

    .line 491
    move-object v5, v3

    check-cast v5, Ljava/util/List;

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_1

    .line 493
    :cond_7
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/16 v7, 0xc83

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I)V

    throw v5

    .line 497
    :cond_8
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 545
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 546
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 547
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "JSON Error"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
