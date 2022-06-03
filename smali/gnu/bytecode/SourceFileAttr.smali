.class public Lgnu/bytecode/SourceFileAttr;
.super Lgnu/bytecode/Attribute;
.source "SourceFileAttr.java"


# instance fields
.field filename:Ljava/lang/String;

.field filename_index:I


# direct methods
.method public constructor <init>(ILgnu/bytecode/ClassType;)V
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceFileAttr;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "ctype":Lgnu/bytecode/ClassType;
    move-object v4, v0

    const-string/jumbo v5, "SourceFile"

    invoke-direct {v4, v5}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 59
    move-object v4, v2

    iget-object v4, v4, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/CpoolUtf8;

    move-object v3, v4

    .line 61
    .local v3, "filenameConstant":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v5, v4, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 62
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceFileAttr;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "SourceFile"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static fixSourceFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "fname":Ljava/lang/String;
    const-string/jumbo v3, "file.separator"

    const-string/jumbo v4, "/"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 27
    .local v1, "fsep":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 29
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 30
    .local v2, "fsep0":C
    move v3, v2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    .line 31
    move-object v3, v0

    move v4, v2

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 33
    .end local v2    # "fsep0":C
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "fname":Ljava/lang/String;
    return-object v0
.end method

.method public static setSourceFile(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "cl":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v4, v0

    const-string/jumbo v5, "SourceFile"

    invoke-static {v4, v5}, Lgnu/bytecode/Attribute;->get(Lgnu/bytecode/AttrContainer;Ljava/lang/String;)Lgnu/bytecode/Attribute;

    move-result-object v4

    move-object v2, v4

    .line 39
    .local v2, "attr":Lgnu/bytecode/Attribute;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/bytecode/SourceFileAttr;

    if-eqz v4, :cond_0

    .line 41
    move-object v4, v2

    check-cast v4, Lgnu/bytecode/SourceFileAttr;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/SourceFileAttr;->setSourceFile(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v4, Lgnu/bytecode/SourceFileAttr;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/bytecode/SourceFileAttr;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 46
    .local v3, "sattr":Lgnu/bytecode/SourceFileAttr;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/bytecode/SourceFileAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    goto :goto_0
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceFileAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 69
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    if-nez v2, :cond_0

    .line 70
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result v3

    iput v3, v2, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 71
    :cond_0
    return-void
.end method

.method public final getLength()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceFileAttr;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/SourceFileAttr;
    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceFileAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/SourceFileAttr;
    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceFileAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v2, v1

    const-string/jumbo v3, "Attribute \""

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 83
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/SourceFileAttr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    move-object v2, v1

    const-string/jumbo v3, "\", length:"

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 85
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/SourceFileAttr;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 86
    move-object v2, v1

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 87
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 88
    move-object v2, v1

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 89
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/SourceFileAttr;->getSourceFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    move-object v2, v1

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 91
    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceFileAttr;
    move-object v1, p1

    .local v1, "filename":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 21
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 22
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
    .line 77
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SourceFileAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    return-void
.end method
