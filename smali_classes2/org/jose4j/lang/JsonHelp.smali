.class public Lorg/jose4j/lang/JsonHelp;
.super Ljava/lang/Object;
.source "JsonHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/JsonHelp;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntDate(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwt/IntDate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jose4j/jwt/IntDate;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lorg/jose4j/lang/JsonHelp;->getLong(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v2, v4

    .line 56
    .local v2, "l":J
    move-wide v4, v2

    invoke-static {v4, v5}, Lorg/jose4j/jwt/IntDate;->fromSeconds(J)Lorg/jose4j/jwt/IntDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v1, p0

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move-object v2, p1

    .local v2, "name":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 62
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    move-object v1, v4

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    return-object v1

    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 31
    .local v2, "object":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public static getStringArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 50
    .local v2, "object":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    move-object v0, v3

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method public static getStringChecked(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 39
    .local v2, "o":Ljava/lang/Object;
    move-object v4, v2

    :try_start_0
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0

    .line 41
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 43
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v4, Lorg/jose4j/lang/JoseException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' parameter was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-static {v7}, Lorg/jose4j/lang/JsonHelp;->jsonTypeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " type but is required to be a String."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static jsonTypeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 71
    const-string/jumbo v2, "Number"

    move-object v1, v2

    .line 94
    .local v1, "jsonTypeName":Ljava/lang/String;
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0

    .line 73
    .end local v1    # "jsonTypeName":Ljava/lang/String;
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 75
    const-string/jumbo v2, "Boolean"

    move-object v1, v2

    .restart local v1    # "jsonTypeName":Ljava/lang/String;
    goto :goto_0

    .line 77
    .end local v1    # "jsonTypeName":Ljava/lang/String;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 79
    const-string/jumbo v2, "Array"

    move-object v1, v2

    .restart local v1    # "jsonTypeName":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v1    # "jsonTypeName":Ljava/lang/String;
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 83
    const-string/jumbo v2, "Object"

    move-object v1, v2

    .restart local v1    # "jsonTypeName":Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v1    # "jsonTypeName":Ljava/lang/String;
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 87
    const-string/jumbo v2, "String"

    move-object v1, v2

    .restart local v1    # "jsonTypeName":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v1    # "jsonTypeName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "unknown"

    move-object v1, v2

    .restart local v1    # "jsonTypeName":Ljava/lang/String;
    goto :goto_0
.end method
