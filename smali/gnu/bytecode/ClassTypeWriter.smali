.class public Lgnu/bytecode/ClassTypeWriter;
.super Ljava/io/PrintWriter;
.source "ClassTypeWriter.java"


# static fields
.field public static final PRINT_CONSTANT_POOL:I = 0x1

.field public static final PRINT_CONSTANT_POOL_INDEXES:I = 0x2

.field public static final PRINT_EXTRAS:I = 0x8

.field public static final PRINT_VERBOSE:I = 0xf

.field public static final PRINT_VERSION:I = 0x4


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field flags:I


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "stream":Ljava/io/OutputStream;
    move v3, p3

    .local v3, "flags":I
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 37
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 38
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, p2

    .local v2, "stream":Ljava/io/Writer;
    move v3, p3

    .local v3, "flags":I
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 31
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 32
    return-void
.end method

.method public static print(Lgnu/bytecode/ClassType;Ljava/io/PrintStream;I)V
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "ctype":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "stream":Ljava/io/PrintStream;
    move v2, p2

    .local v2, "flags":I
    new-instance v4, Lgnu/bytecode/ClassTypeWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    move-object v3, v4

    .line 56
    .local v3, "writer":Lgnu/bytecode/ClassTypeWriter;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 57
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 58
    return-void
.end method

.method public static print(Lgnu/bytecode/ClassType;Ljava/io/PrintWriter;I)V
    .locals 10

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "ctype":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "stream":Ljava/io/PrintWriter;
    move v2, p2

    .local v2, "flags":I
    new-instance v4, Lgnu/bytecode/ClassTypeWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    move-object v3, v4

    .line 49
    .local v3, "writer":Lgnu/bytecode/ClassTypeWriter;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 50
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 51
    return-void
.end method


# virtual methods
.method getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v3, v3, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v3, v3, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move-object v2, v3

    .line 211
    .local v2, "pool":[Lgnu/bytecode/CpoolEntry;
    move-object v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 212
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 214
    .end local v0    # "this":Lgnu/bytecode/ClassTypeWriter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/bytecode/ClassTypeWriter;
    :cond_1
    move-object v3, v2

    move v4, v1

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassTypeWriter;->flags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 64
    move-object v1, v0

    const-string/jumbo v2, "Classfile format major version: "

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 65
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 66
    move-object v1, v0

    const-string/jumbo v2, ", minor version: "

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 67
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getClassfileMinorVersion()S

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 68
    move-object v1, v0

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 70
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/ClassTypeWriter;->flags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassTypeWriter;->printConstantPool()V

    .line 72
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassTypeWriter;->printClassInfo()V

    .line 73
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassTypeWriter;->printFields()V

    .line 74
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassTypeWriter;->printMethods()V

    .line 75
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassTypeWriter;->printAttributes()V

    .line 76
    return-void
.end method

.method public print(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 86
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 87
    return-void
.end method

.method public printAttributes()V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    move-object v1, v2

    .line 92
    .local v1, "attrs":Lgnu/bytecode/AttrContainer;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 93
    move-object v2, v0

    const-string/jumbo v3, "Attributes (count: "

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/bytecode/Attribute;->count(Lgnu/bytecode/AttrContainer;)I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 95
    move-object v2, v0

    const-string/jumbo v3, "):"

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 96
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 97
    return-void
.end method

.method public printAttributes(Lgnu/bytecode/AttrContainer;)V
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "container":Lgnu/bytecode/AttrContainer;
    move-object v3, v1

    invoke-interface {v3}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v3

    move-object v2, v3

    .line 102
    .local v2, "attr":Lgnu/bytecode/Attribute;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 104
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 102
    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    move-object v2, v3

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public printClassInfo()V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 111
    move-object v6, v0

    const-string/jumbo v7, "Access flags:"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 112
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v6

    move v1, v6

    .line 113
    .local v1, "modifiers":I
    move-object v6, v0

    move v7, v1

    const/16 v8, 0x43

    invoke-static {v7, v8}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 114
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 115
    move-object v6, v0

    const-string/jumbo v7, "This class: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 116
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v7, v7, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 117
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v7, v7, Lgnu/bytecode/ClassType;->thisClassIndex:I

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 118
    move-object v6, v0

    const-string/jumbo v7, " super: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 119
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v6, v6, Lgnu/bytecode/ClassType;->superClassIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 120
    move-object v6, v0

    const-string/jumbo v7, "<unknown>"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 128
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 129
    move-object v6, v0

    const-string/jumbo v7, "Interfaces (count: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 130
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v6, v6, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    move-object v2, v6

    .line 131
    .local v2, "interfaces":[I
    move-object v6, v2

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    move v3, v6

    .line 132
    .local v3, "n_interfaces":I
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 133
    move-object v6, v0

    const-string/jumbo v7, "):"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 134
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 135
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_2
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 137
    move-object v6, v0

    const-string/jumbo v7, "- Implements: "

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 138
    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 139
    .local v5, "index":I
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 140
    move-object v6, v0

    move v7, v5

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 141
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 121
    .end local v2    # "interfaces":[I
    .end local v3    # "n_interfaces":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v6, v6, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-nez v6, :cond_1

    .line 122
    move-object v6, v0

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v7, v7, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 126
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v7, v7, Lgnu/bytecode/ClassType;->superClassIndex:I

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_0

    .line 131
    .restart local v2    # "interfaces":[I
    :cond_2
    move-object v6, v2

    array-length v6, v6

    goto :goto_1

    .line 143
    .restart local v3    # "n_interfaces":I
    .restart local v4    # "i":I
    :cond_3
    return-void
.end method

.method final printConstantOperand(I)V
    .locals 8

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 252
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 253
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v4, v4, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v4, v4, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move-object v2, v4

    .line 255
    .local v2, "pool":[Lgnu/bytecode/CpoolEntry;
    move-object v4, v2

    if-eqz v4, :cond_0

    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    move-object v4, v2

    move v5, v1

    aget-object v4, v4, v5

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v3, v5

    .local v3, "entry":Lgnu/bytecode/CpoolEntry;
    if-nez v4, :cond_1

    .line 257
    .end local v3    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_0
    move-object v4, v0

    const-string/jumbo v5, "<invalid constant index>"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 260
    .restart local v3    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_1
    move-object v4, v0

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 261
    move-object v4, v3

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 262
    move-object v4, v0

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0
.end method

.method public printConstantPool()V
    .locals 8

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v5, v5, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move-object v1, v5

    .line 292
    .local v1, "pool":[Lgnu/bytecode/CpoolEntry;
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v5, v5, Lgnu/bytecode/ConstantPool;->count:I

    move v2, v5

    .line 293
    .local v2, "length":I
    const/4 v5, 0x1

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-gt v5, v6, :cond_1

    .line 295
    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 296
    .local v4, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 297
    .line 293
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :cond_0
    move-object v5, v0

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 299
    move-object v5, v0

    move-object v6, v4

    iget v6, v6, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 300
    move-object v5, v0

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 301
    move-object v5, v4

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 302
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/ClassTypeWriter;->println()V

    goto :goto_1

    .line 304
    .end local v4    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_1
    return-void
.end method

.method final printConstantTersely(II)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "expected_tag":I
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(Lgnu/bytecode/CpoolEntry;I)V

    .line 234
    return-void
.end method

.method final printConstantTersely(Lgnu/bytecode/CpoolEntry;I)V
    .locals 6

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "entry":Lgnu/bytecode/CpoolEntry;
    move v2, p2

    .local v2, "expected_tag":I
    move-object v3, v1

    if-nez v3, :cond_0

    .line 220
    move-object v3, v0

    const-string/jumbo v4, "<invalid constant index>"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v3

    move v4, v2

    if-eq v3, v4, :cond_1

    .line 223
    move-object v3, v0

    const-string/jumbo v4, "<unexpected constant type "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 224
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 225
    move-object v3, v0

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0

    .line 228
    :cond_1
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    goto :goto_0
.end method

.method final printContantUtf8AsClass(I)V
    .locals 8

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move v1, p1

    .local v1, "type_index":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    move-object v2, v4

    .line 239
    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 241
    move-object v4, v2

    check-cast v4, Lgnu/bytecode/CpoolUtf8;

    iget-object v4, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v3, v4

    .line 242
    .local v3, "name":Ljava/lang/String;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object v7, v0

    invoke-static {v4, v5, v6, v7}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    .line 243
    .line 246
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 245
    :cond_0
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_0
.end method

.method public printFields()V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 148
    move-object v3, v0

    const-string/jumbo v4, "Fields (count: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 149
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v4, v4, Lgnu/bytecode/ClassType;->fields_count:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 150
    move-object v3, v0

    const-string/jumbo v4, "):"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 151
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 152
    const/4 v3, 0x0

    move v1, v3

    .line 153
    .local v1, "ifield":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v3, v3, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    move-object v2, v3

    .line 154
    .local v2, "field":Lgnu/bytecode/Field;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 156
    move-object v3, v0

    const-string/jumbo v4, "Field name: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 157
    move-object v3, v2

    iget v3, v3, Lgnu/bytecode/Field;->name_index:I

    if-eqz v3, :cond_0

    .line 158
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lgnu/bytecode/Field;->name_index:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 159
    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 160
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lgnu/bytecode/Field;->flags:I

    const/16 v5, 0x46

    invoke-static {v4, v5}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 161
    move-object v3, v0

    const-string/jumbo v4, " Signature: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 162
    move-object v3, v2

    iget v3, v3, Lgnu/bytecode/Field;->signature_index:I

    if-eqz v3, :cond_1

    .line 163
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Lgnu/bytecode/Field;->signature_index:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 164
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 165
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 166
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    iget-object v3, v3, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    move-object v2, v3

    goto :goto_0

    .line 168
    :cond_2
    return-void
.end method

.method public printMethod(Lgnu/bytecode/Method;)V
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "method":Lgnu/bytecode/Method;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 185
    move-object v3, v0

    const-string/jumbo v4, "Method name:"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 186
    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Method;->name_index:I

    if-eqz v3, :cond_0

    .line 187
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/Method;->name_index:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 188
    :cond_0
    move-object v3, v0

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 189
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 190
    move-object v3, v0

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 191
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/Method;->access_flags:I

    const/16 v5, 0x4d

    invoke-static {v4, v5}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 192
    move-object v3, v0

    const-string/jumbo v4, " Signature: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 193
    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/Method;->signature_index:I

    if-eqz v3, :cond_1

    .line 194
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/Method;->signature_index:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 195
    :cond_1
    move-object v3, v0

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 196
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 198
    move v3, v2

    if-lez v3, :cond_2

    .line 199
    move-object v3, v0

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 200
    :cond_2
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_3
    move-object v3, v0

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 203
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 204
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 205
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 206
    return-void
.end method

.method public printMethods()V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 173
    move-object v2, v0

    const-string/jumbo v3, "Methods (count: "

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 174
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v3, v3, Lgnu/bytecode/ClassType;->methods_count:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 175
    move-object v2, v0

    const-string/jumbo v3, "):"

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 176
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, v2, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    move-object v1, v2

    .line 178
    .local v1, "method":Lgnu/bytecode/Method;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 179
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printMethod(Lgnu/bytecode/Method;)V

    .line 178
    move-object v2, v1

    iget-object v2, v2, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    move-object v1, v2

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method printName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public final printOptionalIndex(I)V
    .locals 4

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/ClassTypeWriter;->flags:I

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 310
    move-object v2, v0

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 311
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 312
    move-object v2, v0

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 314
    :cond_0
    return-void
.end method

.method public final printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "entry":Lgnu/bytecode/CpoolEntry;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 319
    return-void
.end method

.method public final printQuotedString(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v6, v0

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 269
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    .line 270
    .local v2, "len":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 272
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v4, v6

    .line 273
    .local v4, "ch":C
    move v6, v4

    const/16 v7, 0x22

    if-ne v6, v7, :cond_1

    .line 274
    move-object v6, v0

    const-string/jumbo v7, "\\\""

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_1
    move v6, v4

    const/16 v7, 0x20

    if-lt v6, v7, :cond_2

    move v6, v4

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_2

    .line 276
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 277
    :cond_2
    move v6, v4

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 278
    move-object v6, v0

    const-string/jumbo v7, "\\n"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_3
    move-object v6, v0

    const-string/jumbo v7, "\\u"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 282
    const/4 v6, 0x4

    move v5, v6

    .local v5, "j":I
    :goto_2
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_0

    .line 283
    move-object v6, v0

    move v7, v4

    move v8, v5

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    shr-int/2addr v7, v8

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_2

    .line 286
    .end local v4    # "ch":C
    .end local v5    # "j":I
    :cond_4
    move-object v6, v0

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 287
    return-void
.end method

.method public final printSignature(Ljava/lang/String;I)I
    .locals 11

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "sig":Ljava/lang/String;
    move v2, p2

    .local v2, "pos":I
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v3, v7

    .line 334
    .local v3, "len":I
    move v7, v2

    move v8, v3

    if-lt v7, v8, :cond_0

    .line 336
    move-object v7, v0

    const-string/jumbo v8, "<empty signature>"

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 337
    move v7, v2

    move v0, v7

    .line 376
    .end local v0    # "this":Lgnu/bytecode/ClassTypeWriter;
    :goto_0
    return v0

    .line 339
    .restart local v0    # "this":Lgnu/bytecode/ClassTypeWriter;
    :cond_0
    move-object v7, v1

    move v8, v2

    invoke-static {v7, v8}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    .line 340
    .local v4, "sig_length":I
    move v7, v4

    if-lez v7, :cond_1

    .line 342
    move-object v7, v1

    move v8, v2

    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgnu/bytecode/Type;->signatureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 343
    .local v5, "name":Ljava/lang/String;
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 345
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 346
    move v7, v2

    move v8, v4

    add-int/2addr v7, v8

    move v0, v7

    goto :goto_0

    .line 349
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 350
    .local v5, "c":C
    move v7, v5

    const/16 v8, 0x28

    if-eq v7, v8, :cond_2

    .line 352
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 353
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    goto :goto_0

    .line 355
    :cond_2
    const/4 v7, 0x0

    move v6, v7

    .line 356
    .local v6, "nargs":I
    add-int/lit8 v2, v2, 0x1

    .line 357
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 360
    :goto_1
    move v7, v2

    move v8, v3

    if-lt v7, v8, :cond_3

    .line 362
    move-object v7, v0

    const-string/jumbo v8, "<truncated method signature>"

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 363
    move v7, v2

    move v0, v7

    goto :goto_0

    .line 365
    :cond_3
    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 366
    move v7, v5

    const/16 v8, 0x29

    if-ne v7, v8, :cond_4

    .line 368
    add-int/lit8 v2, v2, 0x1

    .line 369
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 370
    .line 376
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 372
    :cond_4
    move v7, v6

    add-int/lit8 v6, v6, 0x1

    if-lez v7, :cond_5

    .line 373
    move-object v7, v0

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 374
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result v7

    move v2, v7

    goto :goto_1
.end method

.method public final printSignature(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 454
    move-object v2, v0

    const-string/jumbo v3, "<unknown type>"

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final printSignature(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "sig":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 442
    .local v2, "pos":I
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v4

    .line 443
    .local v3, "len":I
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 445
    move-object v4, v0

    const-string/jumbo v5, "<trailing junk:"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 446
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 447
    move-object v4, v0

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 449
    :cond_0
    return-void
.end method

.method public printSpaces(I)V
    .locals 4

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move v1, p1

    .local v1, "count":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    if-ltz v2, :cond_0

    .line 462
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method public setClass(Lgnu/bytecode/ClassType;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move-object v1, p1

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 81
    return-void
.end method

.method public setFlags(I)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassTypeWriter;
    move v1, p1

    .local v1, "flags":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 44
    return-void
.end method
