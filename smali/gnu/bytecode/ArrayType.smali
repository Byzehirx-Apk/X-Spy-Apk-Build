.class public Lgnu/bytecode/ArrayType;
.super Lgnu/bytecode/ObjectType;
.source "ArrayType.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public elements:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 7

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, p1

    .local v1, "elements":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, p1

    .local v1, "elements":Lgnu/bytecode/Type;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/ArrayType;->this_name:Ljava/lang/String;

    .line 21
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    .line 22
    return-void
.end method

.method public static make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "elements":Lgnu/bytecode/Type;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    move-object v1, v2

    .line 54
    .local v1, "array_type":Lgnu/bytecode/ArrayType;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Lgnu/bytecode/ArrayType;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "[]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    move-object v1, v2

    .line 57
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 59
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "elements":Lgnu/bytecode/Type;
    return-object v0
.end method

.method static make(Ljava/lang/String;)Lgnu/bytecode/ArrayType;
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v1, v3

    .line 41
    .local v1, "elements":Lgnu/bytecode/Type;
    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    move-object v2, v3

    .line 42
    .local v2, "array_type":Lgnu/bytecode/ArrayType;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 44
    new-instance v3, Lgnu/bytecode/ArrayType;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    move-object v2, v3

    .line 45
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 47
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public compare(Lgnu/bytecode/Type;)I
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v2, v1

    sget-object v3, Lgnu/bytecode/ArrayType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne v2, v3, :cond_0

    .line 128
    const/4 v2, 0x1

    move v0, v2

    .line 135
    .end local v0    # "this":Lgnu/bytecode/ArrayType;
    :goto_0
    return v0

    .line 129
    .restart local v0    # "this":Lgnu/bytecode/ArrayType;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_1

    .line 130
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    move-object v3, v1

    check-cast v3, Lgnu/bytecode/ArrayType;

    iget-object v3, v3, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 131
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "java.lang.Object"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    sget-object v3, Lgnu/bytecode/ArrayType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_3

    .line 133
    :cond_2
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 135
    :cond_3
    const/4 v2, -0x3

    move v0, v2

    goto :goto_0
.end method

.method public getComponentType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ArrayType;
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    .line 34
    .local v1, "eltype":Lgnu/bytecode/Type;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lgnu/bytecode/ArrayType;
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ArrayType;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    goto :goto_0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ArrayType;->getSignature()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ArrayType;
    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List",
            "<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, p1

    .local v1, "filter":Lgnu/bytecode/Filter;
    move v2, p2

    .local v2, "searchSupers":I
    move-object v3, p3

    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lgnu/bytecode/Method;>;"
    move v6, v2

    if-lez v6, :cond_2

    .line 106
    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v6

    move v4, v6

    .line 107
    .local v4, "count":I
    move v6, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    move-object v6, v1

    sget-object v7, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    invoke-interface {v6, v7}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 111
    sget-object v6, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    move-object v5, v6

    .line 113
    .local v5, "meth":Lgnu/bytecode/Method;
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 118
    .end local v5    # "meth":Lgnu/bytecode/Method;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 120
    :cond_1
    move v6, v4

    move v0, v6

    .line 122
    .end local v0    # "this":Lgnu/bytecode/ArrayType;
    .end local v4    # "count":I
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/bytecode/ArrayType;
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 73
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getInternalName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 74
    .local v1, "cname":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 75
    .local v2, "elClass":Ljava/lang/Class;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v3, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    .line 78
    .end local v1    # "cname":Ljava/lang/String;
    .end local v2    # "elClass":Ljava/lang/Class;
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/bytecode/ArrayType;->flags:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lgnu/bytecode/ArrayType;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    move-object v0, v3

    .end local v0    # "this":Lgnu/bytecode/ArrayType;
    return-object v0

    .line 80
    .restart local v0    # "this":Lgnu/bytecode/ArrayType;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 82
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/ArrayType;->flags:I

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    .line 84
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no such array class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ArrayType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 87
    .local v2, "rex":Ljava/lang/RuntimeException;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 89
    move-object v3, v2

    throw v3
.end method

.method public getSignature()Ljava/lang/String;
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ArrayType;->signature:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 27
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ArrayType;->setSignature(Ljava/lang/String;)V

    .line 28
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ArrayType;->signature:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ArrayType;
    return-object v0
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
    .line 146
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    .line 147
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iget-object v2, v2, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    move-object v1, v2

    .line 152
    .local v1, "array_type":Lgnu/bytecode/ArrayType;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 153
    move-object v2, v1

    move-object v0, v2

    .line 157
    .end local v0    # "this":Lgnu/bytecode/ArrayType;
    :goto_0
    return-object v0

    .line 156
    .restart local v0    # "this":Lgnu/bytecode/ArrayType;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 157
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ArrayType;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 141
    return-void
.end method
