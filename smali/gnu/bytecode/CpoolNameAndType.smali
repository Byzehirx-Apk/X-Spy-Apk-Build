.class public Lgnu/bytecode/CpoolNameAndType;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolNameAndType.java"


# instance fields
.field name:Lgnu/bytecode/CpoolUtf8;

.field type:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolNameAndType;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)V
    .locals 8

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolNameAndType;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move v2, p2

    .local v2, "hash":I
    move-object v3, p3

    .local v3, "n":Lgnu/bytecode/CpoolUtf8;
    move-object v4, p4

    .local v4, "t":Lgnu/bytecode/CpoolUtf8;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 20
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    .line 21
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    .line 22
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "name":Lgnu/bytecode/CpoolUtf8;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/CpoolUtf8;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    move v0, v2

    .end local v0    # "name":Lgnu/bytecode/CpoolUtf8;
    return v0
.end method


# virtual methods
.method public final getName()Lgnu/bytecode/CpoolUtf8;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolNameAndType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolNameAndType;
    return-object v0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolNameAndType;
    const/16 v1, 0xc

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolNameAndType;
    return v0
.end method

.method public final getType()Lgnu/bytecode/CpoolUtf8;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolNameAndType;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolNameAndType;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolNameAndType;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolNameAndType;->hash:I

    if-nez v1, :cond_0

    .line 44
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v2, v3}, Lgnu/bytecode/CpoolNameAndType;->hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I

    move-result v2

    iput v2, v1, Lgnu/bytecode/CpoolNameAndType;->hash:I

    .line 45
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolNameAndType;->hash:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolNameAndType;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolNameAndType;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move v2, p2

    .local v2, "verbosity":I
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 58
    move-object v3, v1

    const-string/jumbo v4, "NameAndType "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v4, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printName(Ljava/lang/String;)V

    .line 65
    move v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 66
    move-object v3, v1

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 72
    :goto_1
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    iget-object v4, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;)V

    .line 73
    return-void

    .line 59
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 61
    move-object v3, v1

    const-string/jumbo v4, "NameAndType name: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_0

    .line 69
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, ", signature: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 70
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_1
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolNameAndType;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget v3, v3, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    iget v3, v3, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    return-void
.end method
