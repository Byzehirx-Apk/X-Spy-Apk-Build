.class public Lkawa/lib/kawa/hashtable$HashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "hashtable.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/lib/kawa/hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashTable"
.end annotation


# instance fields
.field public equivalenceFunction:Lgnu/mapping/Procedure;

.field public hashFunction:Lgnu/mapping/Procedure;

.field public mutable:Z


# direct methods
.method private $finit$()V
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    move-object v3, v0

    invoke-direct {v3}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 31
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    .line 32
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Lgnu/kawa/util/GeneralHashTable;-><init>(I)V

    move-object v4, v0

    invoke-direct {v4}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 28
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    .line 29
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V
    .locals 10

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    move-object v3, v0

    invoke-direct {v3}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 34
    sget-object v3, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    sget-object v7, Lkawa/lib/kawa/hashtable;->hashtable:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x2

    .line 35
    move-object v7, v1

    iget-object v7, v7, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v7}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x3

    .line 36
    move-object v7, v1

    iget-object v7, v7, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v7}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x4

    .line 37
    move-object v7, v1

    invoke-virtual {v7}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v7

    const/16 v8, 0x64

    add-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lkawa/lib/kawa/hashtable$HashTable;->putAll(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 39
    sget-object v3, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    sget-object v4, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    sget-object v5, Lkawa/lib/kawa/hashtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    move v6, v2

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void

    :cond_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    new-instance v1, Lkawa/lib/kawa/hashtable$HashTable;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    move-object v0, v1

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0
.end method

.method public entriesVectorPair()Lgnu/lists/Pair;
    .locals 15

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    new-instance v7, Lgnu/lists/FVector;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lgnu/lists/FVector;-><init>()V

    .line 57
    new-instance v8, Lgnu/lists/FVector;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lgnu/lists/FVector;-><init>()V

    move-object v2, v8

    .local v2, "vals":Lgnu/lists/FVector;
    move-object v1, v7

    .line 58
    .local v1, "keys":Lgnu/lists/FVector;
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v4, v8

    :try_start_0
    check-cast v7, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    .line 13
    .local v3, "table":[Lgnu/kawa/util/HashNode;
    move-object v7, v3

    array-length v7, v7

    move v4, v7

    .line 58
    .local v4, "length":I
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    if-ltz v7, :cond_1

    .line 16
    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 58
    .local v6, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v7, v6

    const/4 v8, 0x0

    if-eq v7, v8, :cond_0

    .line 59
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v8}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 60
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v8}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    move-result v7

    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 61
    .end local v6    # "node":Lgnu/kawa/util/HashNode;
    :cond_1
    move-object v7, v1

    move-object v8, v2

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0

    .line 58
    .end local v3    # "table":[Lgnu/kawa/util/HashNode;
    .end local v4    # "length":I
    .end local v5    # "i":I
    .restart local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "table"

    const/4 v11, -0x2

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public fold(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    move-object/from16 v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v2, p2

    .local v2, "acc":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v4, v8

    :try_start_0
    check-cast v7, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    .line 13
    .local v3, "table":[Lgnu/kawa/util/HashNode;
    move-object v7, v3

    array-length v7, v7

    move v4, v7

    .line 47
    .local v4, "length":I
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    if-ltz v7, :cond_1

    .line 16
    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 47
    .local v6, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v7, v6

    const/4 v8, 0x0

    if-eq v7, v8, :cond_0

    .line 48
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v8}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v9}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 49
    .end local v6    # "node":Lgnu/kawa/util/HashNode;
    :cond_1
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0

    .line 47
    .end local v3    # "table":[Lgnu/kawa/util/HashNode;
    .end local v4    # "length":I
    .end local v5    # "i":I
    .restart local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "table"

    const/4 v11, -0x2

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return v0
.end method

.method public keysVector()Lgnu/lists/FVector;
    .locals 14

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    new-instance v6, Lgnu/lists/FVector;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lgnu/lists/FVector;-><init>()V

    move-object v1, v6

    .line 52
    .local v1, "v":Lgnu/lists/FVector;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    :try_start_0
    check-cast v6, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 13
    .local v2, "table":[Lgnu/kawa/util/HashNode;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 52
    .local v3, "length":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_1

    .line 16
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 52
    .local v5, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v6, v5

    const/4 v7, 0x0

    if-eq v6, v7, :cond_0

    .line 53
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    move-result v6

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 54
    .end local v5    # "node":Lgnu/kawa/util/HashNode;
    :cond_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0

    .line 52
    .end local v2    # "table":[Lgnu/kawa/util/HashNode;
    .end local v3    # "length":I
    .end local v4    # "i":I
    .restart local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "table"

    const/4 v10, -0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    move-object v1, p1

    .local v1, "value1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value2":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return v0

    .restart local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public putAll(Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 14

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    move-object v1, p1

    .local v1, "other":Lkawa/lib/kawa/hashtable$HashTable;
    move-object v6, v1

    iget-object v6, v6, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    :try_start_0
    check-cast v6, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 13
    .local v2, "table":[Lgnu/kawa/util/HashNode;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 83
    .local v3, "length":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_1

    .line 16
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 83
    .local v5, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v6, v5

    const/4 v7, 0x0

    if-eq v6, v7, :cond_0

    .line 84
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lkawa/lib/kawa/hashtable$HashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 83
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v5    # "node":Lgnu/kawa/util/HashNode;
    :cond_1
    return-void

    .end local v2    # "table":[Lgnu/kawa/util/HashNode;
    .end local v3    # "length":I
    .end local v4    # "i":I
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "table"

    const/4 v10, -0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public toAlist()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v1, v6

    .line 64
    .local v1, "result":Lgnu/lists/LList;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    :try_start_0
    check-cast v6, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 13
    .local v2, "table":[Lgnu/kawa/util/HashNode;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 64
    .local v3, "length":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .end local v1    # "result":Lgnu/lists/LList;
    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_1

    .line 16
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 64
    .local v5, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v6, v5

    const/4 v7, 0x0

    if-eq v6, v7, :cond_0

    .line 65
    move-object v6, v5

    invoke-virtual {v6}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    move-object v7, v1

    invoke-static {v6, v7}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    move-object v1, v6

    .local v1, "result":Lgnu/lists/Pair;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 64
    .end local v1    # "result":Lgnu/lists/Pair;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 68
    .end local v5    # "node":Lgnu/kawa/util/HashNode;
    :cond_1
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0

    .line 64
    .end local v2    # "table":[Lgnu/kawa/util/HashNode;
    .end local v3    # "length":I
    .end local v4    # "i":I
    .restart local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    .local v1, "result":Lgnu/lists/LList;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "table"

    const/4 v10, -0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public toNodeArray()[Lgnu/kawa/util/HashNode;
    .locals 16

    .prologue
    .line 74
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    move-object v8, v0

    invoke-virtual {v8}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v8

    move v1, v8

    .local v1, "n":I
    move v8, v1

    new-array v8, v8, [Lgnu/kawa/util/HashNode;

    move-object v2, v8

    .local v2, "result":[Lgnu/kawa/util/HashNode;
    const/4 v8, 0x0

    move v3, v8

    .line 78
    .local v3, "i":I
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v5, v9

    :try_start_0
    check-cast v8, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 13
    .local v4, "table":[Lgnu/kawa/util/HashNode;
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .line 78
    .local v5, "length":I
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .end local v3    # "i":I
    .local v6, "i":I
    :goto_0
    move v8, v6

    if-ltz v8, :cond_1

    .line 16
    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 78
    .end local v6    # "i":I
    .local v7, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v8, v7

    const/4 v9, 0x0

    if-eq v8, v9, :cond_0

    .line 79
    move-object v8, v2

    move v9, v3

    move-object v10, v7

    aput-object v10, v8, v9

    .line 80
    add-int/lit8 v3, v3, 0x1

    .restart local v3    # "i":I
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v8

    move-object v7, v8

    goto :goto_1

    .line 78
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v6, v6, -0x1

    .restart local v6    # "i":I
    goto :goto_0

    .line 81
    .end local v7    # "node":Lgnu/kawa/util/HashNode;
    :cond_1
    move-object v8, v2

    move-object v0, v8

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0

    .line 78
    .end local v4    # "table":[Lgnu/kawa/util/HashNode;
    .end local v5    # "length":I
    .end local v6    # "i":I
    .restart local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    .restart local v3    # "i":I
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "table"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public toNodeList()Lgnu/lists/LList;
    .locals 14

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v1, v6

    .line 71
    .local v1, "result":Lgnu/lists/LList;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    :try_start_0
    check-cast v6, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 13
    .local v2, "table":[Lgnu/kawa/util/HashNode;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 71
    .local v3, "length":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .end local v1    # "result":Lgnu/lists/LList;
    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_1

    .line 16
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 71
    .local v5, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v6, v5

    const/4 v7, 0x0

    if-eq v6, v7, :cond_0

    .line 72
    move-object v6, v5

    move-object v7, v1

    invoke-static {v6, v7}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    move-object v1, v6

    .local v1, "result":Lgnu/lists/Pair;
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 71
    .end local v1    # "result":Lgnu/lists/Pair;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 73
    .end local v5    # "node":Lgnu/kawa/util/HashNode;
    :cond_1
    move-object v6, v1

    check-cast v6, Lgnu/lists/LList;

    move-object v0, v6

    .end local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0

    .line 71
    .end local v2    # "table":[Lgnu/kawa/util/HashNode;
    .end local v3    # "length":I
    .end local v4    # "i":I
    .restart local v0    # "this":Lkawa/lib/kawa/hashtable$HashTable;
    .local v1, "result":Lgnu/lists/LList;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "table"

    const/4 v10, -0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public walk(Lgnu/mapping/Procedure;)V
    .locals 14

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    :try_start_0
    check-cast v6, [Lgnu/kawa/util/HashNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 13
    .local v2, "table":[Lgnu/kawa/util/HashNode;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .line 45
    .local v3, "length":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    if-ltz v6, :cond_1

    .line 16
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 45
    .local v5, "node":Lgnu/kawa/util/HashNode;
    :goto_1
    move-object v6, v5

    const/4 v7, 0x0

    if-eq v6, v7, :cond_0

    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v5    # "node":Lgnu/kawa/util/HashNode;
    :cond_1
    return-void

    .end local v2    # "table":[Lgnu/kawa/util/HashNode;
    .end local v3    # "length":I
    .end local v4    # "i":I
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "table"

    const/4 v10, -0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method
