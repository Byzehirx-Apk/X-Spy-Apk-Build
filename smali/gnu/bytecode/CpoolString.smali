.class public Lgnu/bytecode/CpoolString;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolString.java"


# instance fields
.field str:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolString;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolString;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move v2, p2

    .local v2, "hash":I
    move-object v3, p3

    .local v3, "str":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 18
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    .line 19
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;)I
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "str":Lgnu/bytecode/CpoolUtf8;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v1

    const v2, 0xf30f

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "str":Lgnu/bytecode/CpoolUtf8;
    return v0
.end method


# virtual methods
.method public final getString()Lgnu/bytecode/CpoolUtf8;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolString;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolString;
    return-object v0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolString;
    const/16 v1, 0x8

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolString;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolString;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolString;->hash:I

    if-nez v1, :cond_0

    .line 33
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v2}, Lgnu/bytecode/CpoolString;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v2

    iput v2, v1, Lgnu/bytecode/CpoolString;->hash:I

    .line 34
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolString;->hash:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolString;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolString;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move v2, p2

    .local v2, "verbosity":I
    move v3, v2

    if-lez v3, :cond_0

    .line 47
    move-object v3, v1

    const-string/jumbo v4, "String "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 48
    move v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 49
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 51
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    iget v4, v4, Lgnu/bytecode/CpoolUtf8;->index:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 52
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolString;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 40
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    iget v3, v3, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 41
    return-void
.end method
