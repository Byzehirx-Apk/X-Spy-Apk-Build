.class public Lgnu/bytecode/SignatureAttr;
.super Lgnu/bytecode/Attribute;
.source "SignatureAttr.java"


# instance fields
.field signature:Ljava/lang/String;

.field signature_index:I


# direct methods
.method public constructor <init>(ILgnu/bytecode/Member;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SignatureAttr;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "owner":Lgnu/bytecode/Member;
    move-object v5, v0

    const-string/jumbo v6, "Signature"

    invoke-direct {v5, v6}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 32
    move-object v5, v2

    instance-of v5, v5, Lgnu/bytecode/ClassType;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Lgnu/bytecode/ClassType;

    :goto_0
    move-object v3, v5

    .line 34
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    move-object v5, v3

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    move v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/CpoolUtf8;

    move-object v4, v5

    .line 36
    .local v4, "signatureConstant":Lgnu/bytecode/CpoolUtf8;
    move-object v5, v0

    move-object v6, v4

    iget-object v6, v6, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v6, v5, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    .line 37
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lgnu/bytecode/SignatureAttr;->signature_index:I

    .line 38
    return-void

    .line 32
    .end local v3    # "ctype":Lgnu/bytecode/ClassType;
    .end local v4    # "signatureConstant":Lgnu/bytecode/CpoolUtf8;
    :cond_0
    move-object v5, v2

    invoke-interface {v5}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SignatureAttr;
    move-object v1, p1

    .local v1, "signature":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "Signature"

    invoke-direct {v2, v3}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 26
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SignatureAttr;
    move-object v1, p1

    .local v1, "cl":Lgnu/bytecode/ClassType;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 43
    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/SignatureAttr;->signature_index:I

    if-nez v2, :cond_0

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result v3

    iput v3, v2, Lgnu/bytecode/SignatureAttr;->signature_index:I

    .line 45
    :cond_0
    return-void
.end method

.method public final getLength()I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SignatureAttr;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/SignatureAttr;
    return v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SignatureAttr;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/SignatureAttr;
    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SignatureAttr;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 57
    move-object v2, v1

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 58
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/SignatureAttr;->signature_index:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 59
    move-object v2, v1

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 60
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/bytecode/SignatureAttr;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 61
    move-object v2, v1

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 62
    return-void
.end method

.method protected setSignature(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/SignatureAttr;
    move-object v1, p1

    .local v1, "sig":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    .line 20
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lgnu/bytecode/SignatureAttr;->signature_index:I

    .line 21
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

    .local v0, "this":Lgnu/bytecode/SignatureAttr;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/SignatureAttr;->signature_index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    return-void
.end method
