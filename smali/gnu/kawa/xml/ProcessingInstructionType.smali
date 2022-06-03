.class public Lgnu/kawa/xml/ProcessingInstructionType;
.super Lgnu/kawa/xml/NodeType;
.source "ProcessingInstructionType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;


# static fields
.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

.field public static final typeProcessingInstructionType:Lgnu/bytecode/ClassType;


# instance fields
.field target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lgnu/kawa/xml/ProcessingInstructionType;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/kawa/xml/ProcessingInstructionType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

    .line 89
    const-string/jumbo v0, "gnu.kawa.xml.ProcessingInstructionType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->typeProcessingInstructionType:Lgnu/bytecode/ClassType;

    .line 91
    sget-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->typeProcessingInstructionType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "coerce"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->coerceMethod:Lgnu/bytecode/Method;

    .line 93
    sget-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->typeProcessingInstructionType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "coerceOrNull"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "processing-instruction()"

    :goto_0
    invoke-direct {v2, v3}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    .line 24
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    .line 25
    return-void

    .line 22
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processing-instruction("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v3

    move-object v2, v3

    .line 75
    .local v2, "pos":Lgnu/kawa/xml/KProcessingInstruction;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 76
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/ClassCastException;-><init>()V

    throw v3

    .line 77
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v3, v0

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v3

    check-cast v3, Lgnu/kawa/xml/KProcessingInstruction;

    move-object v2, v3

    .line 68
    .local v2, "pos":Lgnu/kawa/xml/KProcessingInstruction;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/kawa/xml/KProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v2

    :goto_0
    move-object v0, v3

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/kawa/xml/ProcessingInstructionType;
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "target":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    sget-object v1, Lgnu/kawa/xml/ProcessingInstructionType;->piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

    :goto_0
    move-object v0, v1

    .end local v0    # "target":Ljava/lang/String;
    return-object v0

    .restart local v0    # "target":Ljava/lang/String;
    :cond_0
    new-instance v1, Lgnu/kawa/xml/ProcessingInstructionType;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/xml/ProcessingInstructionType;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-static {v2, v3}, Lgnu/kawa/xml/ProcessingInstructionType;->coerce(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/ProcessingInstructionType;
    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 41
    move-object v2, v1

    sget-object v3, Lgnu/kawa/xml/ProcessingInstructionType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 42
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v3, v4

    .line 83
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 84
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 85
    :cond_0
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 86
    move-object v4, v3

    sget-object v5, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 87
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    const-string/jumbo v1, "gnu.kawa.xml.KProcessingInstruction"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/ProcessingInstructionType;
    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-static {v2, v3}, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/ProcessingInstructionType;
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/ProcessingInstructionType;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v4

    move v3, v4

    .line 52
    .local v3, "kind":I
    move v4, v3

    const/16 v5, 0x25

    if-ne v4, v5, :cond_2

    .line 53
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 56
    .end local v0    # "this":Lgnu/kawa/xml/ProcessingInstructionType;
    :goto_1
    return v0

    .line 53
    .restart local v0    # "this":Lgnu/kawa/xml/ProcessingInstructionType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 54
    :cond_2
    move v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 55
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xml/ProcessingInstructionType;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    goto :goto_1

    .line 56
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
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
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProcessingInstructionType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, "*"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/ProcessingInstructionType;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/ProcessingInstructionType;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

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
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/ProcessingInstructionType;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
