.class public Lgnu/bytecode/CpoolValue1;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolValue1.java"


# instance fields
.field tag:I

.field value:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue1;
    move v1, p1

    .local v1, "tag":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/bytecode/CpoolEntry;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/CpoolValue1;->tag:I

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;III)V
    .locals 8

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue1;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move v2, p2

    .local v2, "tag":I
    move v3, p3

    .local v3, "hash":I
    move v4, p4

    .local v4, "value":I
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-direct {v5, v6, v7}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 19
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/bytecode/CpoolValue1;->tag:I

    .line 20
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lgnu/bytecode/CpoolValue1;->value:I

    .line 21
    return-void
.end method

.method static hashCode(I)I
    .locals 2

    .prologue
    .line 30
    move v0, p0

    .local v0, "val":I
    move v1, v0

    move v0, v1

    .end local v0    # "val":I
    return v0
.end method


# virtual methods
.method public getTag()I
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue1;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolValue1;->tag:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolValue1;
    return v0
.end method

.method public final getValue()I
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue1;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolValue1;->value:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolValue1;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue1;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolValue1;->hash:I

    if-nez v1, :cond_0

    .line 35
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lgnu/bytecode/CpoolValue1;->value:I

    iput v2, v1, Lgnu/bytecode/CpoolValue1;->hash:I

    .line 36
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolValue1;->hash:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolValue1;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue1;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move v2, p2

    .local v2, "verbosity":I
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CpoolValue1;->tag:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 49
    move v3, v2

    if-lez v3, :cond_0

    .line 50
    move-object v3, v1

    const-string/jumbo v4, "Integer "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 51
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 52
    move v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CpoolValue1;->value:I

    if-eqz v3, :cond_1

    .line 54
    move-object v3, v1

    const-string/jumbo v4, "=0x"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 55
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    move v3, v2

    if-lez v3, :cond_3

    .line 61
    move-object v3, v1

    const-string/jumbo v4, "Float "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(F)V

    .line 63
    move v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 65
    move-object v3, v1

    const-string/jumbo v4, "=0x"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 66
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue1;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CpoolValue1;->tag:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 42
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 43
    return-void
.end method
