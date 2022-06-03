.class public Lgnu/bytecode/CpoolClass;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolClass.java"


# instance fields
.field clas:Lgnu/bytecode/ObjectType;

.field name:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move v2, p2

    .local v2, "hash":I
    move-object v3, p3

    .local v3, "n":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 18
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    .line 19
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;)I
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "name":Lgnu/bytecode/CpoolUtf8;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v1

    const/16 v2, 0xf0f

    xor-int/lit16 v1, v1, 0xf0f

    move v0, v1

    .end local v0    # "name":Lgnu/bytecode/CpoolUtf8;
    return v0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolClass;
    return-object v0
.end method

.method public final getClassType()Lgnu/bytecode/ObjectType;
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    move-object v1, v3

    .line 43
    .local v1, "otype":Lgnu/bytecode/ObjectType;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 44
    move-object v3, v1

    move-object v0, v3

    .line 51
    .end local v0    # "this":Lgnu/bytecode/CpoolClass;
    :goto_0
    return-object v0

    .line 45
    .restart local v0    # "this":Lgnu/bytecode/CpoolClass;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v3, v3, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v2, v3

    .line 46
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_1

    .line 47
    move-object v3, v2

    invoke-static {v3}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ObjectType;

    move-object v1, v3

    .line 50
    :goto_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    .line 51
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 49
    :cond_1
    move-object v3, v2

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    move-object v1, v3

    goto :goto_1
.end method

.method public final getName()Lgnu/bytecode/CpoolUtf8;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolClass;
    return-object v0
.end method

.method public final getStringName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolClass;
    return-object v0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    const/4 v1, 0x7

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolClass;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolClass;->hash:I

    if-nez v1, :cond_0

    .line 62
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v2}, Lgnu/bytecode/CpoolClass;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v2

    iput v2, v1, Lgnu/bytecode/CpoolClass;->hash:I

    .line 63
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolClass;->hash:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolClass;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 9

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move v2, p2

    .local v2, "verbosity":I
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 75
    move-object v5, v1

    const-string/jumbo v6, "Class "

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v5, v5, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v3, v5

    .line 82
    .local v3, "str":Ljava/lang/String;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    .line 83
    .local v4, "nlen":I
    move v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_2

    .line 84
    move-object v5, v3

    const/4 v6, 0x0

    move v7, v4

    move-object v8, v1

    invoke-static {v5, v6, v7, v8}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    .line 87
    :goto_1
    return-void

    .line 76
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "nlen":I
    :cond_1
    move v5, v2

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 78
    move-object v5, v1

    const-string/jumbo v6, "Class name: "

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 79
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_0

    .line 86
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "nlen":I
    :cond_2
    move-object v5, v1

    move-object v6, v3

    const/16 v7, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

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
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolClass;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget v3, v3, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 70
    return-void
.end method
