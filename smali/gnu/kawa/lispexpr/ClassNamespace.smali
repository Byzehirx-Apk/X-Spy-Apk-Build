.class public Lgnu/kawa/lispexpr/ClassNamespace;
.super Lgnu/mapping/Namespace;
.source "ClassNamespace.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ClassNamespace;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Namespace;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ClassNamespace;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Namespace;-><init>()V

    .line 35
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/lispexpr/ClassNamespace;->setName(Ljava/lang/String;)V

    .line 36
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    .line 37
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/kawa/lispexpr/ClassNamespace;
    .locals 10

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    sget-object v6, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v2, v7

    monitor-enter v6

    .line 20
    :try_start_0
    sget-object v6, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 21
    .local v3, "old":Ljava/lang/Object;
    move-object v6, v3

    instance-of v6, v6, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v6, :cond_0

    .line 22
    move-object v6, v3

    check-cast v6, Lgnu/kawa/lispexpr/ClassNamespace;

    move-object v7, v2

    monitor-exit v7

    move-object v0, v6

    .line 25
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 23
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v6, Lgnu/kawa/lispexpr/ClassNamespace;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/kawa/lispexpr/ClassNamespace;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v4, v6

    .line 24
    .local v4, "ns":Lgnu/kawa/lispexpr/ClassNamespace;
    sget-object v6, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 25
    move-object v6, v4

    move-object v7, v2

    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 26
    .end local v3    # "old":Ljava/lang/Object;
    .end local v4    # "ns":Lgnu/kawa/lispexpr/ClassNamespace;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ClassNamespace;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/kawa/functions/GetNamedPart;->getTypePart(Lgnu/bytecode/Type;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/lispexpr/ClassNamespace;
    return-object v0

    .line 45
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ClassNamespace;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 47
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v3, v2

    invoke-static {v3}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ClassNamespace;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ClassNamespace;
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ClassNamespace;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    iput-object v3, v2, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    .line 60
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/lispexpr/ClassNamespace;->setName(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ClassNamespace;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/lispexpr/ClassNamespace;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 66
    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 68
    sget-object v3, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Namespace;

    move-object v2, v3

    .line 69
    .local v2, "ns":Lgnu/mapping/Namespace;
    move-object v3, v2

    instance-of v3, v3, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v3, :cond_0

    .line 70
    move-object v3, v2

    move-object v0, v3

    .line 73
    .end local v0    # "this":Lgnu/kawa/lispexpr/ClassNamespace;
    .end local v2    # "ns":Lgnu/mapping/Namespace;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "this":Lgnu/kawa/lispexpr/ClassNamespace;
    .restart local v2    # "ns":Lgnu/mapping/Namespace;
    :cond_0
    sget-object v3, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    .end local v2    # "ns":Lgnu/mapping/Namespace;
    :cond_1
    move-object v3, v0

    move-object v0, v3

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
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ClassNamespace;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
