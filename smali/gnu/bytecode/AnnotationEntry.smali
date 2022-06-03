.class public Lgnu/bytecode/AnnotationEntry;
.super Ljava/lang/Object;
.source "AnnotationEntry.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# instance fields
.field annotationType:Lgnu/bytecode/ClassType;

.field elementsValue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/AnnotationEntry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedHashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, v1, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public addMember(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/AnnotationEntry;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 28
    return-void
.end method

.method public annotationType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/AnnotationEntry;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/AnnotationEntry;->annotationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/AnnotationEntry;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/AnnotationEntry;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v8, v1

    instance-of v8, v8, Lgnu/bytecode/AnnotationEntry;

    if-nez v8, :cond_0

    .line 48
    const/4 v8, 0x0

    move v0, v8

    .line 76
    .end local v0    # "this":Lgnu/bytecode/AnnotationEntry;
    :goto_0
    return v0

    .line 49
    .restart local v0    # "this":Lgnu/bytecode/AnnotationEntry;
    :cond_0
    move-object v8, v1

    check-cast v8, Lgnu/bytecode/AnnotationEntry;

    move-object v2, v8

    .line 50
    .local v2, "other":Lgnu/bytecode/AnnotationEntry;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v9

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 51
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 52
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 54
    .local v4, "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v8

    .line 55
    .local v5, "key":Ljava/lang/String;
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 56
    .local v6, "value1":Ljava/lang/Object;
    move-object v8, v2

    iget-object v8, v8, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 57
    .local v7, "value2":Ljava/lang/Object;
    move-object v8, v6

    move-object v9, v7

    if-eq v8, v9, :cond_3

    .line 59
    move-object v8, v6

    if-eqz v8, :cond_2

    move-object v8, v7

    if-eqz v8, :cond_2

    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 61
    :cond_2
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 63
    :cond_3
    goto :goto_1

    .line 64
    .end local v4    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value1":Ljava/lang/Object;
    .end local v7    # "value2":Ljava/lang/Object;
    :cond_4
    move-object v8, v2

    iget-object v8, v8, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_2
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 66
    .restart local v4    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v8

    .line 67
    .restart local v5    # "key":Ljava/lang/String;
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 68
    .local v6, "value2":Ljava/lang/Object;
    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 69
    .local v7, "value1":Ljava/lang/Object;
    move-object v8, v7

    move-object v9, v6

    if-eq v8, v9, :cond_6

    .line 71
    move-object v8, v7

    if-eqz v8, :cond_5

    move-object v8, v6

    if-eqz v8, :cond_5

    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 73
    :cond_5
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 75
    :cond_6
    goto :goto_2

    .line 76
    .end local v4    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value2":Ljava/lang/Object;
    .end local v7    # "value1":Ljava/lang/Object;
    :cond_7
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0
.end method

.method public getAnnotationType()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/AnnotationEntry;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/AnnotationEntry;->annotationType:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/AnnotationEntry;
    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/AnnotationEntry;
    const/4 v6, 0x0

    move v1, v6

    .line 84
    .local v1, "hash":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v3, v6

    .line 86
    .local v3, "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    move v4, v6

    .line 87
    .local v4, "khash":I
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    move v5, v6

    .line 88
    .local v5, "vhash":I
    move v6, v1

    const/16 v7, 0x7f

    move v8, v4

    mul-int/2addr v7, v8

    move v8, v5

    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    move v1, v6

    .line 89
    goto :goto_0

    .line 90
    .end local v3    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "khash":I
    .end local v5    # "vhash":I
    :cond_0
    move v6, v1

    move v0, v6

    .end local v0    # "this":Lgnu/bytecode/AnnotationEntry;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/AnnotationEntry;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 96
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v5, v1

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 97
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    move-object v5, v1

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    const/4 v5, 0x0

    move v2, v5

    .line 100
    .local v2, "count":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v4, v5

    .line 102
    .local v4, "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move v5, v2

    if-lez v5, :cond_0

    .line 103
    move-object v5, v1

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 104
    :cond_0
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 105
    move-object v5, v1

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 106
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    goto :goto_0

    .line 109
    .end local v4    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    move-object v5, v1

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/bytecode/AnnotationEntry;
    return-object v0
.end method
