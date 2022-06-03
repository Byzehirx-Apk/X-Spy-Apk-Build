.class public Lgnu/kawa/functions/GetNamedInstancePart;
.super Lgnu/mapping/ProcedureN;
.source "GetNamedInstancePart.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/mapping/HasSetter;


# instance fields
.field isField:Z

.field pname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 25
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.kawa.functions.CompileNamedPart:validateGetNamedInstancePart"

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/functions/GetNamedInstancePart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/functions/GetNamedInstancePart;-><init>()V

    .line 32
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/functions/GetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    array-length v4, v4

    invoke-static {v3, v4}, Lgnu/kawa/functions/GetNamedInstancePart;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 55
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v3, :cond_0

    .line 56
    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-static {v3, v4}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 63
    .end local v0    # "this":Lgnu/kawa/functions/GetNamedInstancePart;
    :goto_0
    return-object v0

    .line 59
    .restart local v0    # "this":Lgnu/kawa/functions/GetNamedInstancePart;
    :cond_0
    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 60
    .local v2, "xargs":[Ljava/lang/Object;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 61
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 62
    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v2

    const/4 v6, 0x2

    move-object v7, v1

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    sget-object v3, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "no setter for instance method call"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    new-instance v1, Lgnu/kawa/functions/SetNamedInstancePart;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v2, v3}, Lgnu/kawa/functions/SetNamedInstancePart;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/GetNamedInstancePart;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v1, v0

    iget-boolean v1, v1, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1001

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/GetNamedInstancePart;
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/GetNamedInstancePart;
    :cond_0
    const/16 v1, -0xfff

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
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/kawa/functions/GetNamedInstancePart;->setPartName(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setPartName(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get-instance-part:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/functions/GetNamedInstancePart;->setName(Ljava/lang/String;)V

    .line 38
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 40
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    .line 41
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedInstancePart;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 77
    return-void

    .line 76
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    goto :goto_0
.end method
