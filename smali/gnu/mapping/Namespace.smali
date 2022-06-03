.class public Lgnu/mapping/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/mapping/HasNamedParts;


# static fields
.field public static final EmptyNamespace:Lgnu/mapping/Namespace;

.field protected static final nsTable:Ljava/util/Hashtable;


# instance fields
.field log2Size:I

.field private mask:I

.field name:Ljava/lang/String;

.field num_bindings:I

.field protected prefix:Ljava/lang/String;

.field protected table:[Lgnu/mapping/SymbolRef;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Ljava/util/Hashtable;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    .line 26
    const-string/jumbo v0, ""

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, v0

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lgnu/mapping/Namespace;-><init>(I)V

    .line 43
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move v1, p1

    .local v1, "capacity":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 47
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lgnu/mapping/Namespace;->log2Size:I

    .line 48
    :goto_0
    move v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/Namespace;->log2Size:I

    shl-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 49
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lgnu/mapping/Namespace;->log2Size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgnu/mapping/Namespace;->log2Size:I

    goto :goto_0

    .line 50
    :cond_0
    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/Namespace;->log2Size:I

    shl-int/2addr v2, v3

    move v1, v2

    .line 51
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Lgnu/mapping/SymbolRef;

    iput-object v3, v2, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 52
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lgnu/mapping/Namespace;->mask:I

    .line 53
    return-void
.end method

.method public static create()Lgnu/mapping/Namespace;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lgnu/mapping/Namespace;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lgnu/mapping/Namespace;-><init>(I)V

    return-object v0
.end method

.method public static create(I)Lgnu/mapping/Namespace;
    .locals 5

    .prologue
    .line 57
    move v0, p0

    .local v0, "capacity":I
    new-instance v1, Lgnu/mapping/Namespace;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Lgnu/mapping/Namespace;-><init>(I)V

    move-object v0, v1

    .end local v0    # "capacity":I
    return-object v0
.end method

.method public static getDefault()Lgnu/mapping/Namespace;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public static getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    const-string/jumbo v3, ""

    if-ne v2, v3, :cond_1

    .line 127
    :cond_0
    const-string/jumbo v2, ""

    move-object v1, v2

    .line 130
    .local v1, "uri":Ljava/lang/String;
    :goto_0
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "prefix":Ljava/lang/String;
    return-object v0

    .line 129
    .end local v1    # "uri":Ljava/lang/String;
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://kawa.gnu.org/unknown-namespace/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "uri":Ljava/lang/String;
    goto :goto_0
.end method

.method public static valueOf()Lgnu/mapping/Namespace;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 83
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 84
    :cond_0
    sget-object v4, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 86
    :try_start_0
    sget-object v4, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Namespace;

    move-object v2, v4

    .line 87
    .local v2, "ns":Lgnu/mapping/Namespace;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 88
    move-object v4, v2

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    .line 92
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 89
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    new-instance v4, Lgnu/mapping/Namespace;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/mapping/Namespace;-><init>()V

    move-object v2, v4

    .line 90
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    .line 91
    sget-object v4, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 92
    move-object v4, v2

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 93
    .end local v2    # "ns":Lgnu/mapping/Namespace;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/mapping/SimpleSymbol;)Lgnu/mapping/Namespace;
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v1, p1

    .local v1, "prefix":Lgnu/mapping/SimpleSymbol;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "uri":Ljava/lang/String;
    return-object v0

    .restart local v0    # "uri":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;
    .locals 11

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 99
    :cond_0
    move-object v7, v0

    invoke-static {v7}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v7

    move-object v0, v7

    .line 110
    .end local v0    # "uri":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 100
    .restart local v0    # "uri":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 101
    .local v2, "xname":Ljava/lang/String;
    sget-object v7, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 103
    :try_start_0
    sget-object v7, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 104
    .local v4, "old":Ljava/lang/Object;
    move-object v7, v4

    instance-of v7, v7, Lgnu/mapping/Namespace;

    if-eqz v7, :cond_2

    .line 105
    move-object v7, v4

    check-cast v7, Lgnu/mapping/Namespace;

    move-object v8, v3

    monitor-exit v8

    move-object v0, v7

    goto :goto_0

    .line 106
    :cond_2
    new-instance v7, Lgnu/mapping/Namespace;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lgnu/mapping/Namespace;-><init>()V

    move-object v5, v7

    .line 107
    .local v5, "ns":Lgnu/mapping/Namespace;
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    .line 108
    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 109
    sget-object v7, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 110
    move-object v7, v5

    move-object v8, v3

    monitor-exit v8

    move-object v0, v7

    goto :goto_0

    .line 111
    .end local v4    # "old":Ljava/lang/Object;
    .end local v5    # "ns":Lgnu/mapping/Namespace;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method


# virtual methods
.method public add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;
    .locals 10

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "sym":Lgnu/mapping/Symbol;
    move v2, p2

    .local v2, "hash":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr v5, v6

    move v3, v5

    .line 191
    .local v3, "index":I
    new-instance v5, Lgnu/mapping/SymbolRef;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v0

    invoke-direct {v6, v7, v8}, Lgnu/mapping/SymbolRef;-><init>(Lgnu/mapping/Symbol;Lgnu/mapping/Namespace;)V

    move-object v4, v5

    .line 192
    .local v4, "ref":Lgnu/mapping/SymbolRef;
    move-object v5, v1

    move-object v6, v0

    iput-object v6, v5, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 193
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    move v7, v3

    aget-object v6, v6, v7

    iput-object v6, v5, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 194
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    move v6, v3

    move-object v7, v4

    aput-object v7, v5, v6

    .line 195
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/mapping/Namespace;->num_bindings:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lgnu/mapping/Namespace;->num_bindings:I

    .line 196
    move-object v5, v0

    iget v5, v5, Lgnu/mapping/Namespace;->num_bindings:I

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 197
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Namespace;->rehash()V

    .line 198
    :cond_0
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Lgnu/mapping/Namespace;
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Namespace;
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Namespace;
    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, v0

    iget-object v1, v1, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/Namespace;
    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Namespace;
    return-object v0
.end method

.method public isConstant(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lgnu/mapping/Namespace;
    return v0
.end method

.method public lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Namespace;
    return-object v0
.end method

.method public lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .locals 12

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "hash":I
    move v3, p3

    .local v3, "create":Z
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v4, v8

    monitor-enter v7

    .line 205
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    :try_start_0
    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Namespace;->lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v5, v7

    .line 206
    .local v5, "sym":Lgnu/mapping/Symbol;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 207
    move-object v7, v5

    move-object v8, v4

    monitor-exit v8

    move-object v0, v7

    .line 228
    .end local v0    # "this":Lgnu/mapping/Namespace;
    :goto_0
    return-object v0

    .line 219
    .restart local v0    # "this":Lgnu/mapping/Namespace;
    :cond_0
    move v7, v3

    if-eqz v7, :cond_2

    .line 221
    move-object v7, v0

    sget-object v8, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    if-ne v7, v8, :cond_1

    .line 222
    new-instance v7, Lgnu/mapping/SimpleSymbol;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 225
    :goto_1
    move-object v7, v0

    move-object v8, v5

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Namespace;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v8, v4

    monitor-exit v8

    move-object v0, v7

    goto :goto_0

    .line 224
    :cond_1
    new-instance v7, Lgnu/mapping/Symbol;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_1

    .line 228
    :cond_2
    const/4 v7, 0x0

    move-object v8, v4

    monitor-exit v8

    move-object v0, v7

    goto :goto_0

    .line 229
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method protected final lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;
    .locals 12

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "hash":I
    move v8, v2

    move-object v9, v0

    iget v9, v9, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr v8, v9

    move v3, v8

    .line 163
    .local v3, "index":I
    const/4 v8, 0x0

    move-object v4, v8

    .line 164
    .local v4, "prev":Lgnu/mapping/SymbolRef;
    move-object v8, v0

    iget-object v8, v8, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    move v9, v3

    aget-object v8, v8, v9

    move-object v5, v8

    .local v5, "ref":Lgnu/mapping/SymbolRef;
    :goto_0
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 166
    move-object v8, v5

    iget-object v8, v8, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    move-object v6, v8

    .line 167
    .local v6, "next":Lgnu/mapping/SymbolRef;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v8

    move-object v7, v8

    .line 168
    .local v7, "sym":Lgnu/mapping/Symbol;
    move-object v8, v7

    if-nez v8, :cond_1

    .line 171
    move-object v8, v4

    if-nez v8, :cond_0

    .line 172
    move-object v8, v0

    iget-object v8, v8, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    move v9, v3

    move-object v10, v6

    aput-object v10, v8, v9

    .line 175
    :goto_1
    move-object v8, v0

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Lgnu/mapping/Namespace;->num_bindings:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lgnu/mapping/Namespace;->num_bindings:I

    .line 183
    :goto_2
    move-object v8, v6

    move-object v5, v8

    .line 184
    goto :goto_0

    .line 174
    :cond_0
    move-object v8, v4

    move-object v9, v6

    iput-object v9, v8, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    goto :goto_1

    .line 179
    :cond_1
    move-object v8, v7

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 180
    move-object v8, v7

    move-object v0, v8

    .line 185
    .end local v0    # "this":Lgnu/mapping/Namespace;
    .end local v6    # "next":Lgnu/mapping/SymbolRef;
    .end local v7    # "sym":Lgnu/mapping/Symbol;
    :goto_3
    return-object v0

    .line 181
    .restart local v0    # "this":Lgnu/mapping/Namespace;
    .restart local v6    # "next":Lgnu/mapping/SymbolRef;
    .restart local v7    # "sym":Lgnu/mapping/Symbol;
    :cond_2
    move-object v8, v5

    move-object v4, v8

    goto :goto_2

    .line 185
    .end local v6    # "next":Lgnu/mapping/SymbolRef;
    .end local v7    # "sym":Lgnu/mapping/Symbol;
    :cond_3
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_3
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
    .line 311
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    .line 312
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 318
    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 320
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v1

    :goto_0
    move-object v2, v4

    .line 322
    .local v2, "xname":Ljava/lang/String;
    sget-object v4, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Namespace;

    move-object v3, v4

    .line 323
    .local v3, "ns":Lgnu/mapping/Namespace;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 324
    move-object v4, v3

    move-object v0, v4

    .line 327
    .end local v0    # "this":Lgnu/mapping/Namespace;
    .end local v2    # "xname":Ljava/lang/String;
    .end local v3    # "ns":Lgnu/mapping/Namespace;
    :goto_1
    return-object v0

    .line 320
    .restart local v0    # "this":Lgnu/mapping/Namespace;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 325
    .restart local v2    # "xname":Ljava/lang/String;
    .restart local v3    # "ns":Lgnu/mapping/Namespace;
    :cond_2
    sget-object v4, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 327
    .end local v2    # "xname":Ljava/lang/String;
    .end local v3    # "ns":Lgnu/mapping/Namespace;
    :cond_3
    move-object v4, v0

    move-object v0, v4

    goto :goto_1
.end method

.method protected rehash()V
    .locals 18

    .prologue
    .line 270
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v14, v0

    iget-object v14, v14, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    array-length v14, v14

    move v1, v14

    .line 271
    .local v1, "oldCapacity":I
    const/4 v14, 0x2

    move v15, v1

    mul-int/2addr v14, v15

    move v2, v14

    .line 272
    .local v2, "newCapacity":I
    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v3, v14

    .line 273
    .local v3, "newMask":I
    const/4 v14, 0x0

    move v4, v14

    .line 274
    .local v4, "countInserted":I
    move-object v14, v0

    iget-object v14, v14, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    move-object v5, v14

    .line 275
    .local v5, "oldTable":[Lgnu/mapping/SymbolRef;
    move v14, v2

    new-array v14, v14, [Lgnu/mapping/SymbolRef;

    move-object v6, v14

    .line 277
    .local v6, "newTable":[Lgnu/mapping/SymbolRef;
    move v14, v1

    move v7, v14

    .local v7, "i":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    move v14, v7

    if-ltz v14, :cond_2

    .line 279
    move-object v14, v5

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .local v8, "ref":Lgnu/mapping/SymbolRef;
    :goto_1
    move-object v14, v8

    if-eqz v14, :cond_1

    .line 281
    move-object v14, v8

    iget-object v14, v14, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    move-object v9, v14

    .line 282
    .local v9, "next":Lgnu/mapping/SymbolRef;
    move-object v14, v8

    invoke-virtual {v14}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v14

    move-object v10, v14

    .line 283
    .local v10, "sym":Lgnu/mapping/Symbol;
    move-object v14, v10

    if-eqz v14, :cond_0

    .line 285
    move-object v14, v10

    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    .line 286
    .local v11, "key":Ljava/lang/String;
    move-object v14, v11

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    move v12, v14

    .line 287
    .local v12, "hash":I
    move v14, v12

    move v15, v3

    and-int/2addr v14, v15

    move v13, v14

    .line 288
    .local v13, "index":I
    add-int/lit8 v4, v4, 0x1

    .line 289
    move-object v14, v8

    move-object v15, v6

    move/from16 v16, v13

    aget-object v15, v15, v16

    iput-object v15, v14, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 290
    move-object v14, v6

    move v15, v13

    move-object/from16 v16, v8

    aput-object v16, v14, v15

    .line 292
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "hash":I
    .end local v13    # "index":I
    :cond_0
    move-object v14, v9

    move-object v8, v14

    .line 293
    goto :goto_1

    .end local v9    # "next":Lgnu/mapping/SymbolRef;
    .end local v10    # "sym":Lgnu/mapping/Symbol;
    :cond_1
    goto :goto_0

    .line 296
    .end local v8    # "ref":Lgnu/mapping/SymbolRef;
    :cond_2
    move-object v14, v0

    move-object v15, v6

    iput-object v15, v14, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 297
    move-object v14, v0

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    iget v15, v15, Lgnu/mapping/Namespace;->log2Size:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lgnu/mapping/Namespace;->log2Size:I

    .line 298
    move-object v14, v0

    move v15, v3

    iput v15, v14, Lgnu/mapping/Namespace;->mask:I

    .line 299
    move-object v14, v0

    move v15, v4

    iput v15, v14, Lgnu/mapping/Namespace;->num_bindings:I

    .line 300
    return-void
.end method

.method public remove(Lgnu/mapping/Symbol;)Z
    .locals 15

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object/from16 v1, p1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    move-object v11, v0

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v2, v12

    monitor-enter v11

    .line 236
    move-object v11, v1

    :try_start_0
    invoke-virtual {v11}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 237
    .local v3, "name":Ljava/lang/String;
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    move v4, v11

    .line 238
    .local v4, "hash":I
    move v11, v4

    move-object v12, v0

    iget v12, v12, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr v11, v12

    move v5, v11

    .line 239
    .local v5, "index":I
    const/4 v11, 0x0

    move-object v6, v11

    .line 240
    .local v6, "prev":Lgnu/mapping/SymbolRef;
    move-object v11, v0

    iget-object v11, v11, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    move v12, v5

    aget-object v11, v11, v12

    move-object v7, v11

    .line 241
    .local v7, "ref":Lgnu/mapping/SymbolRef;
    :goto_0
    move-object v11, v7

    if-eqz v11, :cond_4

    .line 243
    move-object v11, v7

    iget-object v11, v11, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    move-object v8, v11

    .line 244
    .local v8, "next":Lgnu/mapping/SymbolRef;
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v11

    move-object v9, v11

    .line 245
    .local v9, "refsym":Lgnu/mapping/Symbol;
    move-object v11, v9

    if-eqz v11, :cond_0

    move-object v11, v9

    move-object v12, v1

    if-ne v11, v12, :cond_2

    .line 247
    :cond_0
    move-object v11, v6

    if-nez v11, :cond_1

    .line 248
    move-object v11, v0

    iget-object v11, v11, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    move v12, v5

    move-object v13, v8

    aput-object v13, v11, v12

    .line 251
    :goto_1
    move-object v11, v0

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    iget v12, v12, Lgnu/mapping/Namespace;->num_bindings:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lgnu/mapping/Namespace;->num_bindings:I

    .line 252
    move-object v11, v9

    if-eqz v11, :cond_3

    .line 253
    const/4 v11, 0x1

    move-object v12, v2

    monitor-exit v12

    move v0, v11

    .line 259
    .end local v0    # "this":Lgnu/mapping/Namespace;
    .end local v8    # "next":Lgnu/mapping/SymbolRef;
    .end local v9    # "refsym":Lgnu/mapping/Symbol;
    :goto_2
    return v0

    .line 250
    .restart local v0    # "this":Lgnu/mapping/Namespace;
    .restart local v8    # "next":Lgnu/mapping/SymbolRef;
    .restart local v9    # "refsym":Lgnu/mapping/Symbol;
    :cond_1
    move-object v11, v6

    move-object v12, v8

    iput-object v12, v11, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    goto :goto_1

    .line 260
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "hash":I
    .end local v5    # "index":I
    .end local v6    # "prev":Lgnu/mapping/SymbolRef;
    .end local v7    # "ref":Lgnu/mapping/SymbolRef;
    .end local v8    # "next":Lgnu/mapping/SymbolRef;
    .end local v9    # "refsym":Lgnu/mapping/Symbol;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v10

    throw v11

    .line 256
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "hash":I
    .restart local v5    # "index":I
    .restart local v6    # "prev":Lgnu/mapping/SymbolRef;
    .restart local v7    # "ref":Lgnu/mapping/SymbolRef;
    .restart local v8    # "next":Lgnu/mapping/SymbolRef;
    .restart local v9    # "refsym":Lgnu/mapping/Symbol;
    :cond_2
    move-object v11, v7

    move-object v6, v11

    .line 257
    :cond_3
    move-object v11, v8

    move-object v7, v11

    .line 258
    goto :goto_0

    .line 259
    .end local v8    # "next":Lgnu/mapping/SymbolRef;
    .end local v9    # "refsym":Lgnu/mapping/Symbol;
    :cond_4
    const/4 v11, 0x0

    move-object v12, v2

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v11

    goto :goto_2
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "#,(namespace \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 334
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    move-object v2, v1

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 336
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    const-string/jumbo v3, ""

    if-eq v2, v3, :cond_0

    .line 338
    move-object v2, v1

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 341
    :cond_0
    move-object v2, v1

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/Namespace;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/Namespace;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 305
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 306
    return-void
.end method
