.class public Lgnu/bytecode/LineNumbersAttr;
.super Lgnu/bytecode/Attribute;
.source "LineNumbersAttr.java"


# instance fields
.field linenumber_count:I

.field linenumber_table:[S


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LineNumbersAttr;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    const-string/jumbo v3, "LineNumberTable"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 25
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/LineNumbersAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 26
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 27
    return-void
.end method

.method public constructor <init>([SLgnu/bytecode/CodeAttr;)V
    .locals 6

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LineNumbersAttr;
    move-object v1, p1

    .local v1, "numbers":[S
    move-object v2, p2

    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 32
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    .line 33
    move-object v3, v0

    move-object v4, v1

    array-length v4, v4

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 34
    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LineNumbersAttr;
    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/LineNumbersAttr;
    return v0
.end method

.method public getLineCount()I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LineNumbersAttr;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/LineNumbersAttr;
    return v0
.end method

.method public getLineNumberTable()[S
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LineNumbersAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/LineNumbersAttr;
    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LineNumbersAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v3, v1

    const-string/jumbo v4, "Attribute \""

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 74
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/LineNumbersAttr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 75
    move-object v3, v1

    const-string/jumbo v4, "\", length:"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 76
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/LineNumbersAttr;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 77
    move-object v3, v1

    const-string/jumbo v4, ", count: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 78
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 79
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    if-ge v3, v4, :cond_0

    .line 81
    move-object v3, v1

    const-string/jumbo v4, "  line: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 82
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    const/4 v5, 0x2

    move v6, v2

    mul-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-short v4, v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 83
    move-object v3, v1

    const-string/jumbo v4, " at pc: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    const/4 v5, 0x2

    move v6, v2

    mul-int/2addr v5, v6

    aget-short v4, v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public put(II)V
    .locals 11

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LineNumbersAttr;
    move v1, p1

    .local v1, "linenumber":I
    move v2, p2

    .local v2, "PC":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    if-nez v4, :cond_1

    .line 42
    move-object v4, v0

    const/16 v5, 0x20

    new-array v5, v5, [S

    iput-object v5, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    .line 50
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/2addr v5, v6

    move v6, v2

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 51
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 52
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 53
    return-void

    .line 43
    :cond_1
    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 45
    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    array-length v5, v5

    mul-int/2addr v4, v5

    new-array v4, v4, [S

    move-object v3, v4

    .line 46
    .local v3, "new_linenumbers":[S
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v9, v0

    iget v9, v9, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    goto :goto_0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/LineNumbersAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 64
    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/2addr v4, v5

    move v2, v4

    .line 65
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 67
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    move v6, v3

    aget-short v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
