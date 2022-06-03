.class public Lgnu/bytecode/CpoolValue2;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolValue2.java"


# instance fields
.field tag:I

.field value:J


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue2;
    move v1, p1

    .local v1, "tag":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/bytecode/CpoolEntry;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/CpoolValue2;->tag:I

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;IIJ)V
    .locals 10

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue2;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move v2, p2

    .local v2, "tag":I
    move v3, p3

    .local v3, "hash":I
    move-wide v4, p4

    .local v4, "value":J
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    invoke-direct {v6, v7, v8}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 19
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lgnu/bytecode/CpoolValue2;->tag:I

    .line 20
    move-object v6, v0

    move-wide v7, v4

    iput-wide v7, v6, Lgnu/bytecode/CpoolValue2;->value:J

    .line 21
    move-object v6, v1

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/bytecode/ConstantPool;->count:I

    .line 22
    return-void
.end method

.method static hashCode(J)I
    .locals 4

    .prologue
    .line 31
    move-wide v0, p0

    .local v0, "val":J
    move-wide v2, v0

    long-to-int v2, v2

    move v0, v2

    .end local v0    # "val":J
    return v0
.end method


# virtual methods
.method public getTag()I
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue2;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolValue2;->tag:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolValue2;
    return v0
.end method

.method public final getValue()J
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue2;
    move-object v1, v0

    iget-wide v1, v1, Lgnu/bytecode/CpoolValue2;->value:J

    move-wide v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolValue2;
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue2;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolValue2;->hash:I

    if-nez v1, :cond_0

    .line 36
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v2, v3}, Lgnu/bytecode/CpoolValue2;->hashCode(J)I

    move-result v2

    iput v2, v1, Lgnu/bytecode/CpoolValue2;->hash:I

    .line 37
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolValue2;->hash:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolValue2;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolValue2;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move v2, p2

    .local v2, "verbosity":I
    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CpoolValue2;->tag:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 50
    move v3, v2

    if-lez v3, :cond_0

    .line 51
    move-object v3, v1

    const-string/jumbo v4, "Long "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 52
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(J)V

    .line 53
    move v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    move-object v3, v0

    iget-wide v3, v3, Lgnu/bytecode/CpoolValue2;->value:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 55
    move-object v3, v1

    const-string/jumbo v4, "=0x"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 56
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    move v3, v2

    if-lez v3, :cond_3

    .line 62
    move-object v3, v1

    const-string/jumbo v4, "Double "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 63
    :cond_3
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(D)V

    .line 64
    move v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 66
    move-object v3, v1

    const-string/jumbo v4, "=0x"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 67
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v1, p0

    .local v1, "this":Lgnu/bytecode/CpoolValue2;
    move-object v2, p1

    .local v2, "dstr":Ljava/io/DataOutputStream;
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/CpoolValue2;->tag:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 43
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 44
    return-void
.end method
