.class public abstract Lgnu/kawa/xml/TreeScanner;
.super Lgnu/mapping/MethodProc;
.source "TreeScanner.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public type:Lgnu/lists/NodePredicate;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/TreeScanner;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    .line 22
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.kawa.xml.CompileXmlFunctions:validateApplyTreeScanner"

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/xml/TreeScanner;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/TreeScanner;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v6, v1

    iget-object v6, v6, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v6, Lgnu/lists/PositionConsumer;

    move-object v2, v6

    .line 38
    .local v2, "out":Lgnu/lists/PositionConsumer;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 39
    .local v3, "node":Ljava/lang/Object;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->lastArg()V

    .line 43
    move-object v6, v3

    :try_start_0
    check-cast v6, Lgnu/kawa/xml/KNode;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 48
    .line 49
    .local v4, "spos":Lgnu/kawa/xml/KNode;
    move-object v6, v0

    move-object v7, v4

    iget-object v7, v7, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v8, v4

    invoke-virtual {v8}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Lgnu/kawa/xml/TreeScanner;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 50
    return-void

    .line 45
    .end local v4    # "spos":Lgnu/kawa/xml/KNode;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 47
    .local v5, "ex":Ljava/lang/ClassCastException;
    new-instance v6, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/kawa/xml/TreeScanner;->getDesc()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x4

    move-object v10, v3

    const-string/jumbo v11, "node()"

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v6
.end method

.method public getDesc()Ljava/lang/String;
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/TreeScanner;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 66
    .local v1, "thisName":Ljava/lang/String;
    move-object v3, v1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move v2, v3

    .line 67
    .local v2, "dot":I
    move v3, v2

    if-lez v3, :cond_0

    .line 68
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 69
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/TreeScanner;
    return-object v0
.end method

.method public getNodePredicate()Lgnu/lists/NodePredicate;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/TreeScanner;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/TreeScanner;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/TreeScanner;
    const/16 v1, 0x1001

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/TreeScanner;
    return v0
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
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/TreeScanner;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/NodePredicate;

    iput-object v3, v2, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    .line 61
    return-void
.end method

.method public abstract scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/TreeScanner;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/TreeScanner;
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
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/TreeScanner;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
