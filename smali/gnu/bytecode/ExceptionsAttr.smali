.class public Lgnu/bytecode/ExceptionsAttr;
.super Lgnu/bytecode/Attribute;
.source "ExceptionsAttr.java"


# instance fields
.field exception_table:[S

.field exceptions:[Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExceptionsAttr;
    move-object v1, p1

    .local v1, "meth":Lgnu/bytecode/Method;
    move-object v2, v0

    const-string/jumbo v3, "Exceptions"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/ExceptionsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 21
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExceptionsAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 45
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-object v2, v5

    .line 46
    .local v2, "cp":Lgnu/bytecode/ConstantPool;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v5, v5

    move v3, v5

    .line 47
    .local v3, "count":I
    move-object v5, v0

    move v6, v3

    new-array v6, v6, [S

    iput-object v6, v5, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    .line 48
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 50
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    move v6, v4

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    move v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v7

    iget v7, v7, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v7, v7

    aput-short v7, v5, v6

    .line 48
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final getExceptions()[Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExceptionsAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/ExceptionsAttr;
    return-object v0
.end method

.method public final getLength()I
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExceptionsAttr;
    const/4 v1, 0x2

    const/4 v2, 0x2

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/ExceptionsAttr;
    return v0

    .restart local v0    # "this":Lgnu/bytecode/ExceptionsAttr;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v3, v3

    goto :goto_0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExceptionsAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v5, v1

    const-string/jumbo v6, "Attribute \""

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 80
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ExceptionsAttr;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 81
    move-object v5, v1

    const-string/jumbo v6, "\", length:"

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 82
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ExceptionsAttr;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 83
    move-object v5, v1

    const-string/jumbo v6, ", count: "

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v5, v5

    move v2, v5

    .line 85
    .local v2, "count":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 86
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 88
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    move v6, v3

    aget-short v5, v5, v6

    const v6, 0xffff

    and-int/2addr v5, v6

    move v4, v5

    .line 89
    .local v4, "catch_type_index":I
    move-object v5, v1

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 91
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 92
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v4    # "catch_type_index":I
    :cond_0
    return-void
.end method

.method public setExceptions([Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExceptionsAttr;
    move-object v1, p1

    .local v1, "excep_types":[Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    .line 40
    return-void
.end method

.method public setExceptions([SLgnu/bytecode/ClassType;)V
    .locals 10

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExceptionsAttr;
    move-object v1, p1

    .local v1, "indices":[S
    move-object v2, p2

    .local v2, "cl":Lgnu/bytecode/ClassType;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    .line 28
    move-object v5, v0

    move-object v6, v1

    array-length v6, v6

    new-array v6, v6, [Lgnu/bytecode/ClassType;

    iput-object v6, v5, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    .line 29
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v5

    move-object v3, v5

    .line 30
    .local v3, "cp":Lgnu/bytecode/ConstantPool;
    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    if-ltz v5, :cond_0

    .line 31
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    move v6, v4

    move-object v7, v3

    move-object v8, v1

    move v9, v4

    aget-short v8, v8, v9

    invoke-virtual {v7, v8}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/CpoolClass;

    invoke-virtual {v7}, Lgnu/bytecode/CpoolClass;->getClassType()Lgnu/bytecode/ObjectType;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/ClassType;

    aput-object v7, v5, v6

    .line 30
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ExceptionsAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v4, v4

    move v2, v4

    .line 70
    .local v2, "count":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 73
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    move v6, v3

    aget-short v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
