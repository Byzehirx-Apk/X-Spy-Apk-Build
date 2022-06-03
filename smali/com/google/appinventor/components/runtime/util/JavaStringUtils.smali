.class public Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;
    }
.end annotation


# static fields
.field private static final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

.field public static final LOG_TAG_JOIN_STRINGS:Ljava/lang/String; = "JavaJoinListOfStrings"

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 165
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;-><init>(B)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    .line 166
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;-><init>(B)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    .line 167
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;-><init>(B)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    .line 168
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;-><init>(B)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    new-instance v8, Ljava/util/TreeSet;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    sget-object v10, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Comparator;

    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v3, v8

    .line 339
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :goto_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 342
    move-object v4, v9

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 343
    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move-object v6, v8

    .line 346
    move-object v8, v1

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    .line 349
    :goto_1
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 351
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    move v5, v8

    .line 352
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    move v7, v8

    .line 358
    new-instance v8, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move v10, v5

    move v11, v7

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;-><init>(IILjava/lang/String;)V

    move-object v5, v8

    .line 359
    move-object v8, v3

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 360
    goto :goto_1

    .line 361
    :cond_0
    goto :goto_0

    .line 370
    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    :goto_2
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;

    move-object v4, v8

    .line 375
    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v4

    iget v10, v10, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 376
    move-object v8, v4

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    move-object v6, v8

    .line 377
    move-object v8, v0

    move-object v9, v4

    iget v9, v9, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 379
    goto :goto_2

    .line 381
    :cond_2
    move-object v8, v0

    move-object v0, v8

    return-object v0
.end method

.method public static joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1199
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v5

    .line 1200
    const/4 v5, 0x1

    move v3, v5

    .line 1201
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v5

    :goto_0
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 1203
    move v5, v3

    if-eqz v5, :cond_0

    .line 1204
    const/4 v5, 0x0

    move v3, v5

    .line 1207
    :goto_1
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1208
    goto :goto_0

    .line 1206
    :cond_0
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_1

    .line 1209
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    move-object v0, v5

    return-object v0
.end method

.method public static replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v7

    .line 271
    new-instance v7, Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v3, v7

    .line 274
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 276
    :goto_0
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 277
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    .line 282
    move-object v5, v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 283
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 287
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 288
    move-object v7, v4

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 292
    :cond_0
    move-object v7, v3

    move-object v8, v6

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 293
    goto :goto_0

    .line 299
    :cond_1
    move-object v7, v2

    move-object v8, v4

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/String;)V

    .line 302
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static replaceAllMappingsDictionaryOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static replaceAllMappingsEarliestOccurrenceOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static replaceAllMappingsLongestStringOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
