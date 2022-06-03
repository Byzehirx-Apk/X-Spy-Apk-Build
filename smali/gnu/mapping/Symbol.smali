.class public Lgnu/mapping/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final FUNCTION:Lgnu/mapping/Symbol;

.field public static final PLIST:Lgnu/mapping/Symbol;


# instance fields
.field protected name:Ljava/lang/String;

.field namespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    const-string/jumbo v0, "(function)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->FUNCTION:Lgnu/mapping/Symbol;

    .line 362
    const-string/jumbo v0, "(property-list)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "ns":Lgnu/mapping/Namespace;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 290
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 292
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 293
    return-void
.end method

.method public static equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .locals 6

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "sym1":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "sym2":Lgnu/mapping/Symbol;
    move-object v4, v0

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 306
    const/4 v4, 0x1

    move v0, v4

    .line 322
    .end local v0    # "sym1":Lgnu/mapping/Symbol;
    :goto_0
    return v0

    .line 307
    .restart local v0    # "sym1":Lgnu/mapping/Symbol;
    :cond_0
    move-object v4, v0

    if-eqz v4, :cond_1

    move-object v4, v1

    if-nez v4, :cond_2

    .line 308
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 312
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_4

    .line 315
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    move-object v2, v4

    .line 316
    .local v2, "namespace1":Lgnu/mapping/Namespace;
    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    move-object v3, v4

    .line 319
    .local v3, "namespace2":Lgnu/mapping/Namespace;
    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v3

    if-eqz v4, :cond_4

    .line 320
    move-object v4, v2

    iget-object v4, v4, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    move-object v5, v3

    iget-object v5, v5, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 322
    .end local v2    # "namespace1":Lgnu/mapping/Namespace;
    .end local v3    # "namespace2":Lgnu/mapping/Namespace;
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 119
    .local v2, "ns":Lgnu/mapping/Namespace;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_2

    .line 120
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    .line 121
    .end local v0    # "namespace":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 116
    .end local v2    # "ns":Lgnu/mapping/Namespace;
    .restart local v0    # "namespace":Ljava/lang/Object;
    :cond_1
    move-object v3, v0

    check-cast v3, Lgnu/mapping/Namespace;

    goto :goto_0

    .line 121
    .restart local v2    # "ns":Lgnu/mapping/Namespace;
    :cond_2
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "uri":Ljava/lang/String;
    return-object v0
.end method

.method public static makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lgnu/mapping/Symbol;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "local":Ljava/lang/String;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lgnu/mapping/Namespace;->makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "local":Ljava/lang/String;
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 13

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/String;
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v1, v9

    .line 185
    .local v1, "slen":I
    const/4 v9, -0x1

    move v2, v9

    .local v2, "lbr":I
    const/4 v9, -0x1

    move v3, v9

    .line 186
    .local v3, "rbr":I
    const/4 v9, 0x0

    move v4, v9

    .line 187
    .local v4, "braceCount":I
    const/4 v9, 0x0

    move v5, v9

    .line 188
    .local v5, "mainStart":I
    const/4 v9, 0x0

    move v6, v9

    .line 189
    .local v6, "prefixEnd":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v1

    if-ge v9, v10, :cond_0

    .line 191
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v8, v9

    .line 192
    .local v8, "ch":C
    move v9, v8

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_1

    move v9, v4

    if-nez v9, :cond_1

    .line 194
    move v9, v7

    move v6, v9

    .line 195
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 223
    .end local v8    # "ch":C
    :cond_0
    :goto_1
    move v9, v2

    if-ltz v9, :cond_8

    move v9, v3

    if-lez v9, :cond_8

    .line 225
    move-object v9, v0

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 226
    .local v7, "uri":Ljava/lang/String;
    move v9, v6

    if-lez v9, :cond_7

    move-object v9, v0

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :goto_2
    move-object v8, v9

    .line 227
    .local v8, "prefix":Ljava/lang/String;
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    move-object v11, v8

    invoke-static {v9, v10, v11}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    move-object v0, v9

    .line 236
    .end local v0    # "symbol":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v8    # "prefix":Ljava/lang/String;
    :goto_3
    return-object v0

    .line 198
    .restart local v0    # "symbol":Ljava/lang/String;
    .local v7, "i":I
    .local v8, "ch":C
    :cond_1
    move v9, v8

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_3

    .line 200
    move v9, v2

    if-gez v9, :cond_2

    .line 202
    move v9, v7

    move v6, v9

    .line 203
    move v9, v7

    move v2, v9

    .line 205
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 207
    :cond_3
    move v9, v8

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_6

    .line 209
    add-int/lit8 v4, v4, -0x1

    .line 210
    move v9, v4

    if-nez v9, :cond_5

    .line 212
    move v9, v7

    move v3, v9

    .line 213
    move v9, v7

    move v10, v1

    if-ge v9, v10, :cond_4

    move-object v9, v0

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_4

    move v9, v7

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    :goto_4
    move v5, v9

    .line 214
    goto :goto_1

    .line 213
    :cond_4
    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 216
    :cond_5
    move v9, v4

    if-gez v9, :cond_6

    .line 218
    move v9, v6

    move v5, v9

    .line 219
    goto :goto_1

    .line 189
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 226
    .end local v8    # "ch":C
    .local v7, "uri":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 229
    .local v7, "i":I
    :cond_8
    move v9, v6

    if-lez v9, :cond_9

    .line 231
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    const/4 v11, 0x0

    move v12, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    move-object v0, v9

    goto :goto_3

    .line 236
    :cond_9
    move-object v9, v0

    invoke-static {v9}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v9

    move-object v0, v9

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "spec":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_1

    .line 132
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    .line 147
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "spec":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "spec":Ljava/lang/Object;
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/Namespace;

    if-eqz v3, :cond_2

    .line 135
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Namespace;

    move-object v2, v3

    .line 147
    .end local v1    # "spec":Ljava/lang/Object;
    .local v2, "ns":Lgnu/mapping/Namespace;
    :goto_1
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 136
    .end local v2    # "ns":Lgnu/mapping/Namespace;
    .restart local v1    # "spec":Ljava/lang/Object;
    :cond_2
    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_3

    .line 137
    sget-object v3, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v2, v3

    .restart local v2    # "ns":Lgnu/mapping/Namespace;
    goto :goto_1

    .line 141
    .end local v2    # "ns":Lgnu/mapping/Namespace;
    :cond_3
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    move-object v1, v3

    .line 145
    .local v1, "spec":Ljava/lang/CharSequence;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "ns":Lgnu/mapping/Namespace;
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 5

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/String;
    move-object v2, p2

    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Symbol;

    move-object v2, v3

    .line 298
    .local v2, "other":Lgnu/mapping/Symbol;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 299
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "comparing Symbols in different namespaces"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Symbol;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public final getLocalPart()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public final getNamespace()Lgnu/mapping/Namespace;
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v2

    move-object v1, v2

    .line 55
    .local v1, "ns":Lgnu/mapping/Namespace;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Symbol;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    move-object v1, v2

    .line 66
    .local v1, "ns":Lgnu/mapping/Namespace;
    move-object v2, v1

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Symbol;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public final hasEmptyNamespace()Z
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v3

    move-object v1, v3

    .line 74
    .local v1, "ns":Lgnu/mapping/Namespace;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    .local v2, "nsname":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .end local v2    # "nsname":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Symbol;
    .restart local v2    # "nsname":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Symbol;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "key":Lgnu/mapping/EnvironmentKey;
    move-object v2, v1

    invoke-interface {v2}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Symbol;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v2, p2

    .local v2, "property":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return v0

    .restart local v0    # "this":Lgnu/mapping/Symbol;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Namespace;

    iput-object v3, v2, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 415
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    if-nez v1, :cond_0

    .line 422
    move-object v1, v0

    move-object v0, v1

    .line 423
    .end local v0    # "this":Lgnu/mapping/Symbol;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/Symbol;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final setNamespace(Lgnu/mapping/Namespace;)V
    .locals 4

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "ns":Lgnu/mapping/Namespace;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 347
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, v0

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lgnu/mapping/Symbol;->toString(C)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public toString(C)Ljava/lang/String;
    .locals 11

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move v1, p1

    .local v1, "style":C
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 378
    .local v2, "uri":Ljava/lang/String;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 379
    .local v3, "prefix":Ljava/lang/String;
    move-object v8, v2

    if-eqz v8, :cond_5

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    .line 380
    .local v4, "hasUri":Z
    move-object v8, v3

    if-eqz v8, :cond_6

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    move v5, v8

    .line 381
    .local v5, "hasPrefix":Z
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 382
    .local v6, "name":Ljava/lang/String;
    move v8, v4

    if-nez v8, :cond_0

    move v8, v5

    if-eqz v8, :cond_7

    .line 384
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v8

    .line 385
    .local v7, "sbuf":Ljava/lang/StringBuilder;
    move v8, v5

    if-eqz v8, :cond_2

    move v8, v1

    const/16 v9, 0x55

    if-ne v8, v9, :cond_1

    move v8, v4

    if-nez v8, :cond_2

    .line 386
    :cond_1
    move-object v8, v7

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 387
    :cond_2
    move v8, v4

    if-eqz v8, :cond_4

    move v8, v1

    const/16 v9, 0x50

    if-ne v8, v9, :cond_3

    move v8, v5

    if-nez v8, :cond_4

    .line 389
    :cond_3
    move-object v8, v7

    const/16 v9, 0x7b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 390
    move-object v8, v7

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 391
    move-object v8, v7

    const/16 v9, 0x7d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 393
    :cond_4
    move-object v8, v7

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 394
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 395
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 398
    .end local v0    # "this":Lgnu/mapping/Symbol;
    .end local v7    # "sbuf":Ljava/lang/StringBuilder;
    :goto_2
    return-object v0

    .line 379
    .end local v4    # "hasUri":Z
    .end local v5    # "hasPrefix":Z
    .end local v6    # "name":Ljava/lang/String;
    .restart local v0    # "this":Lgnu/mapping/Symbol;
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 380
    .restart local v4    # "hasUri":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 398
    .restart local v5    # "hasPrefix":Z
    .restart local v6    # "name":Ljava/lang/String;
    :cond_7
    move-object v8, v6

    move-object v0, v8

    goto :goto_2
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v3

    move-object v2, v3

    .line 404
    .local v2, "ns":Lgnu/mapping/Namespace;
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 405
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 406
    return-void
.end method
