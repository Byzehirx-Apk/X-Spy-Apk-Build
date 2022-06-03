.class public Lgnu/mapping/PropertyLocation;
.super Lgnu/mapping/Location;
.source "PropertyLocation.java"


# instance fields
.field pair:Lgnu/lists/Pair;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertyLocation;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Location;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lgnu/mapping/PropertyLocation;->getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method public static getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "env":Lgnu/mapping/Environment;
    move-object v4, v0

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-nez v4, :cond_0

    .line 131
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 132
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v0, v4

    .line 137
    .end local v0    # "symbol":Ljava/lang/Object;
    :cond_0
    move-object v4, v3

    move-object v5, v0

    check-cast v5, Lgnu/mapping/Symbol;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "symbol":Ljava/lang/Object;
    :cond_1
    move-object v4, v3

    sget-object v5, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    move-object v6, v0

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static getPropertyList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    sget-object v2, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    move-object v3, v0

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method public static getPropertyList(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "env":Lgnu/mapping/Environment;
    move-object v2, v1

    sget-object v3, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    move-object v4, v0

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "plist":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "prop":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "dfault":Ljava/lang/Object;
    :goto_0
    move-object v4, v0

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_1

    .line 264
    move-object v4, v0

    check-cast v4, Lgnu/lists/Pair;

    move-object v3, v4

    .line 265
    .local v3, "pair":Lgnu/lists/Pair;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 266
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 268
    .end local v0    # "plist":Ljava/lang/Object;
    .end local v3    # "pair":Lgnu/lists/Pair;
    :goto_1
    return-object v0

    .line 267
    .restart local v0    # "plist":Ljava/lang/Object;
    .restart local v3    # "pair":Lgnu/lists/Pair;
    :cond_0
    goto :goto_0

    .line 268
    .end local v3    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_1
.end method

.method public static plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "plist":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "prop":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v6, v0

    move-object v3, v6

    .local v3, "p":Ljava/lang/Object;
    :goto_0
    move-object v6, v3

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    .line 278
    move-object v6, v3

    check-cast v6, Lgnu/lists/Pair;

    move-object v4, v6

    .line 279
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    move-object v5, v6

    .line 280
    .local v5, "next":Lgnu/lists/Pair;
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 282
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 283
    move-object v6, v0

    move-object v0, v6

    .line 287
    .end local v0    # "plist":Ljava/lang/Object;
    .end local v4    # "pair":Lgnu/lists/Pair;
    .end local v5    # "next":Lgnu/lists/Pair;
    :goto_1
    return-object v0

    .line 285
    .restart local v0    # "plist":Ljava/lang/Object;
    .restart local v4    # "pair":Lgnu/lists/Pair;
    .restart local v5    # "next":Lgnu/lists/Pair;
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 286
    goto :goto_0

    .line 287
    .end local v4    # "pair":Lgnu/lists/Pair;
    .end local v5    # "next":Lgnu/lists/Pair;
    :cond_1
    new-instance v6, Lgnu/lists/Pair;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    new-instance v9, Lgnu/lists/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    move-object v12, v0

    invoke-direct {v10, v11, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v6

    goto :goto_1
.end method

.method public static plistRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "plist":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "prop":Ljava/lang/Object;
    const/4 v6, 0x0

    move-object v2, v6

    .line 296
    .local v2, "prev":Lgnu/lists/Pair;
    move-object v6, v0

    move-object v3, v6

    .local v3, "p":Ljava/lang/Object;
    :goto_0
    move-object v6, v3

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_2

    .line 298
    move-object v6, v3

    check-cast v6, Lgnu/lists/Pair;

    move-object v4, v6

    .line 299
    .local v4, "pair":Lgnu/lists/Pair;
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    move-object v5, v6

    .line 300
    .local v5, "next":Lgnu/lists/Pair;
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 301
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 303
    move-object v6, v2

    if-nez v6, :cond_0

    .line 304
    move-object v6, v3

    move-object v0, v6

    .line 310
    .end local v0    # "plist":Ljava/lang/Object;
    .end local v4    # "pair":Lgnu/lists/Pair;
    .end local v5    # "next":Lgnu/lists/Pair;
    :goto_1
    return-object v0

    .line 305
    .restart local v0    # "plist":Ljava/lang/Object;
    .restart local v4    # "pair":Lgnu/lists/Pair;
    .restart local v5    # "next":Lgnu/lists/Pair;
    :cond_0
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 306
    move-object v6, v0

    move-object v0, v6

    goto :goto_1

    .line 308
    :cond_1
    move-object v6, v5

    move-object v2, v6

    .line 309
    goto :goto_0

    .line 310
    .end local v4    # "pair":Lgnu/lists/Pair;
    .end local v5    # "next":Lgnu/lists/Pair;
    :cond_2
    move-object v6, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public static putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "newValue":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lgnu/mapping/PropertyLocation;->putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    .line 211
    return-void
.end method

.method public static putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 14

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "newValue":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "env":Lgnu/mapping/Environment;
    move-object v9, v0

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-nez v9, :cond_0

    .line 156
    move-object v9, v0

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 157
    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    move-object v0, v9

    .line 165
    .end local v0    # "symbol":Ljava/lang/Object;
    :cond_0
    move-object v9, v3

    move-object v10, v0

    check-cast v10, Lgnu/mapping/Symbol;

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v9

    move-object v4, v9

    .line 166
    .local v4, "loc":Lgnu/mapping/Location;
    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v4, v10

    instance-of v9, v9, Lgnu/mapping/PropertyLocation;

    if-eqz v9, :cond_2

    .line 167
    move-object v9, v4

    check-cast v9, Lgnu/mapping/PropertyLocation;

    move-object v10, v2

    invoke-virtual {v9, v10}, Lgnu/mapping/PropertyLocation;->set(Ljava/lang/Object;)V

    .line 202
    .end local v4    # "loc":Lgnu/mapping/Location;
    :goto_0
    return-void

    .line 160
    .restart local v0    # "symbol":Ljava/lang/Object;
    :cond_1
    move-object v9, v3

    sget-object v10, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    move-object v11, v0

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v9

    move-object v4, v9

    .line 161
    .local v4, "lloc":Lgnu/mapping/Location;
    move-object v9, v4

    move-object v10, v4

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v10, v11}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v1

    move-object v12, v2

    invoke-static {v10, v11, v12}, Lgnu/mapping/PropertyLocation;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 162
    goto :goto_0

    .line 170
    .end local v0    # "symbol":Ljava/lang/Object;
    .local v4, "loc":Lgnu/mapping/Location;
    :cond_2
    move-object v9, v3

    sget-object v10, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    move-object v11, v0

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v9

    move-object v5, v9

    .line 171
    .local v5, "lloc":Lgnu/mapping/Location;
    move-object v9, v5

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v9, v10}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .line 172
    .local v6, "plist":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v7, v9

    .line 194
    .local v7, "pair":Lgnu/lists/Pair;
    new-instance v9, Lgnu/lists/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v9

    .line 195
    new-instance v9, Lgnu/lists/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v9

    .line 196
    .local v6, "plist":Lgnu/lists/Pair;
    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v9, v10}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 197
    new-instance v9, Lgnu/mapping/PropertyLocation;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Lgnu/mapping/PropertyLocation;-><init>()V

    move-object v8, v9

    .line 199
    .local v8, "ploc":Lgnu/mapping/PropertyLocation;
    move-object v9, v8

    move-object v10, v7

    iput-object v10, v9, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    .line 200
    move-object v9, v3

    move-object v10, v0

    check-cast v10, Lgnu/mapping/Symbol;

    move-object v11, v1

    move-object v12, v8

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v9

    goto :goto_0
.end method

.method public static removeProperty(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/mapping/PropertyLocation;->removeProperty(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Z

    move-result v2

    move v0, v2

    .end local v0    # "symbol":Ljava/lang/Object;
    return v0
.end method

.method public static removeProperty(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Z
    .locals 11

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "env":Lgnu/mapping/Environment;
    move-object v8, v2

    sget-object v9, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    move-object v10, v0

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v8

    move-object v3, v8

    .line 219
    .local v3, "ploc":Lgnu/mapping/Location;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 220
    const/4 v8, 0x0

    move v0, v8

    .line 246
    .end local v0    # "symbol":Ljava/lang/Object;
    :goto_0
    return v0

    .line 221
    .restart local v0    # "symbol":Ljava/lang/Object;
    :cond_0
    move-object v8, v3

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v8, v9}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 222
    .local v4, "plist":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/lists/Pair;

    if-nez v8, :cond_1

    .line 223
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 224
    :cond_1
    move-object v8, v4

    check-cast v8, Lgnu/lists/Pair;

    move-object v5, v8

    .line 225
    .local v5, "pair":Lgnu/lists/Pair;
    const/4 v8, 0x0

    move-object v6, v8

    .line 228
    .local v6, "prev":Lgnu/lists/Pair;
    :goto_1
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v1

    if-ne v8, v9, :cond_3

    .line 229
    .line 236
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 237
    .local v7, "tail":Ljava/lang/Object;
    move-object v8, v6

    if-nez v8, :cond_5

    .line 239
    move-object v8, v7

    move-object v4, v8

    .line 240
    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 244
    :goto_2
    move-object v8, v0

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_2

    .line 245
    move-object v8, v2

    move-object v9, v0

    check-cast v9, Lgnu/mapping/Symbol;

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 246
    :cond_2
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 230
    .end local v7    # "tail":Ljava/lang/Object;
    :cond_3
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 231
    .local v7, "next":Ljava/lang/Object;
    move-object v8, v7

    instance-of v8, v8, Lgnu/lists/Pair;

    if-nez v8, :cond_4

    .line 232
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 233
    :cond_4
    move-object v8, v5

    move-object v6, v8

    .line 234
    move-object v8, v7

    check-cast v8, Lgnu/lists/Pair;

    move-object v5, v8

    .line 235
    goto :goto_1

    .line 243
    .local v7, "tail":Ljava/lang/Object;
    :cond_5
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static setPropertyList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "plist":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/mapping/PropertyLocation;->setPropertyList(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    .line 117
    return-void
.end method

.method public static setPropertyList(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 19

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "plist":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "env":Lgnu/mapping/Environment;
    move-object v14, v2

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object v3, v15

    monitor-enter v14

    .line 62
    move-object v14, v2

    :try_start_0
    sget-object v15, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v14

    move-object v4, v14

    .line 63
    .local v4, "lloc":Lgnu/mapping/Location;
    move-object v14, v0

    instance-of v14, v14, Lgnu/mapping/Symbol;

    if-eqz v14, :cond_0

    .line 65
    move-object v14, v0

    check-cast v14, Lgnu/mapping/Symbol;

    move-object v5, v14

    .line 66
    .local v5, "sym":Lgnu/mapping/Symbol;
    move-object v14, v4

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v14, v15}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v6, v14

    .line 67
    .local v6, "old":Ljava/lang/Object;
    move-object v14, v6

    move-object v7, v14

    .line 71
    .local v7, "p":Ljava/lang/Object;
    :goto_0
    move-object v14, v7

    instance-of v14, v14, Lgnu/lists/Pair;

    if-nez v14, :cond_1

    .line 72
    .line 80
    move-object v14, v1

    move-object v7, v14

    .line 83
    :goto_1
    move-object v14, v7

    instance-of v14, v14, Lgnu/lists/Pair;

    if-nez v14, :cond_3

    .line 84
    .line 105
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .end local v6    # "old":Ljava/lang/Object;
    .end local v7    # "p":Ljava/lang/Object;
    :cond_0
    move-object v14, v4

    move-object v15, v1

    invoke-virtual {v14, v15}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 106
    move-object v14, v3

    monitor-exit v14

    .line 107
    return-void

    .line 73
    .restart local v5    # "sym":Lgnu/mapping/Symbol;
    .restart local v6    # "old":Ljava/lang/Object;
    .restart local v7    # "p":Ljava/lang/Object;
    :cond_1
    move-object v14, v7

    check-cast v14, Lgnu/lists/Pair;

    move-object v8, v14

    .line 74
    .local v8, "pair":Lgnu/lists/Pair;
    move-object v14, v8

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object v9, v14

    .line 75
    .local v9, "property":Ljava/lang/Object;
    move-object v14, v1

    move-object v15, v9

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 76
    move-object v14, v2

    move-object v15, v5

    move-object/from16 v16, v9

    invoke-virtual/range {v14 .. v16}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 77
    :cond_2
    move-object v14, v8

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/lists/Pair;

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    move-object v7, v14

    .line 78
    goto :goto_0

    .line 85
    .end local v8    # "pair":Lgnu/lists/Pair;
    .end local v9    # "property":Ljava/lang/Object;
    :cond_3
    move-object v14, v7

    check-cast v14, Lgnu/lists/Pair;

    move-object v8, v14

    .line 86
    .restart local v8    # "pair":Lgnu/lists/Pair;
    move-object v14, v8

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object v9, v14

    .line 87
    .restart local v9    # "property":Ljava/lang/Object;
    move-object v14, v2

    move-object v15, v5

    move-object/from16 v16, v9

    invoke-virtual/range {v14 .. v16}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v14

    move-object v10, v14

    .line 89
    .local v10, "loc":Lgnu/mapping/Location;
    move-object v14, v10

    if-eqz v14, :cond_4

    move-object v14, v10

    invoke-virtual {v14}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v14

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object v10, v15

    instance-of v14, v14, Lgnu/mapping/PropertyLocation;

    if-eqz v14, :cond_4

    .line 92
    move-object v14, v10

    check-cast v14, Lgnu/mapping/PropertyLocation;

    move-object v11, v14

    .line 99
    .local v11, "ploc":Lgnu/mapping/PropertyLocation;
    :goto_2
    move-object v14, v8

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/lists/Pair;

    move-object v12, v14

    .line 100
    .local v12, "valuePair":Lgnu/lists/Pair;
    move-object v14, v11

    move-object v15, v12

    iput-object v15, v14, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    .line 102
    move-object v14, v12

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    move-object v7, v14

    .line 103
    goto :goto_1

    .line 96
    .end local v11    # "ploc":Lgnu/mapping/PropertyLocation;
    .end local v12    # "valuePair":Lgnu/lists/Pair;
    :cond_4
    new-instance v14, Lgnu/mapping/PropertyLocation;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Lgnu/mapping/PropertyLocation;-><init>()V

    move-object v11, v14

    .line 97
    .restart local v11    # "ploc":Lgnu/mapping/PropertyLocation;
    move-object v14, v2

    move-object v15, v5

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    invoke-virtual/range {v14 .. v17}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v14

    goto :goto_2

    .line 106
    .end local v4    # "lloc":Lgnu/mapping/Location;
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .end local v6    # "old":Ljava/lang/Object;
    .end local v7    # "p":Ljava/lang/Object;
    .end local v8    # "pair":Lgnu/lists/Pair;
    .end local v9    # "property":Ljava/lang/Object;
    .end local v10    # "loc":Lgnu/mapping/Location;
    .end local v11    # "ploc":Lgnu/mapping/PropertyLocation;
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v3

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v13

    throw v14
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertyLocation;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/PropertyLocation;
    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertyLocation;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/PropertyLocation;
    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/PropertyLocation;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 30
    return-void
.end method
