.class public Lgnu/bytecode/EnclosingMethodAttr;
.super Lgnu/bytecode/Attribute;
.source "EnclosingMethodAttr.java"


# instance fields
.field class_index:I

.field method:Lgnu/bytecode/Method;

.field method_index:I


# direct methods
.method public constructor <init>(IILgnu/bytecode/ClassType;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/EnclosingMethodAttr;
    move v1, p1

    .local v1, "class_index":I
    move v2, p2

    .local v2, "method_index":I
    move-object v3, p3

    .local v3, "ctype":Lgnu/bytecode/ClassType;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 22
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    .line 23
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/EnclosingMethodAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v2, v0

    const-string/jumbo v3, "EnclosingMethod"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 16
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/EnclosingMethodAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 17
    return-void
.end method

.method public static getFirstEnclosingMethod(Lgnu/bytecode/Attribute;)Lgnu/bytecode/EnclosingMethodAttr;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "attr":Lgnu/bytecode/Attribute;
    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    instance-of v1, v1, Lgnu/bytecode/EnclosingMethodAttr;

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/EnclosingMethodAttr;

    move-object v0, v1

    .end local v0    # "attr":Lgnu/bytecode/Attribute;
    return-object v0

    .line 28
    .restart local v0    # "attr":Lgnu/bytecode/Attribute;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/EnclosingMethodAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 40
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    if-eqz v3, :cond_0

    .line 42
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move-object v2, v3

    .line 43
    .local v2, "constants":Lgnu/bytecode/ConstantPool;
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/CpoolClass;->getIndex()I

    move-result v4

    iput v4, v3, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    .line 44
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/CpoolNameAndType;->getIndex()I

    move-result v4

    iput v4, v3, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    .line 46
    .end local v2    # "constants":Lgnu/bytecode/ConstantPool;
    :cond_0
    return-void
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/EnclosingMethodAttr;
    const/4 v1, 0x4

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/EnclosingMethodAttr;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/EnclosingMethodAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/EnclosingMethodAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v5, Lgnu/bytecode/ClassType;

    move-object v2, v5

    .line 58
    .local v2, "ctype":Lgnu/bytecode/ClassType;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-object v3, v5

    .line 59
    .local v3, "constants":Lgnu/bytecode/ConstantPool;
    move-object v5, v1

    const-string/jumbo v6, "Attribute \""

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 60
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/EnclosingMethodAttr;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 61
    move-object v5, v1

    const-string/jumbo v6, "\", length:"

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/EnclosingMethodAttr;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 63
    move-object v5, v1

    const-string/jumbo v6, "  class: "

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 64
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 65
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v5

    move-object v4, v5

    .line 66
    .local v4, "centry":Lgnu/bytecode/CpoolEntry;
    move-object v5, v1

    move-object v6, v4

    check-cast v6, Lgnu/bytecode/CpoolClass;

    invoke-virtual {v6}, Lgnu/bytecode/CpoolClass;->getStringName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 67
    move-object v5, v1

    const-string/jumbo v6, ", method: "

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 68
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 69
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    const/16 v7, 0xc

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v5

    move-object v4, v5

    .line 70
    move-object v5, v4

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 71
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 72
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/EnclosingMethodAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    return-void
.end method
