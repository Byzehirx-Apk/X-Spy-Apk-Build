.class public Lgnu/bytecode/CpoolUtf8;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolUtf8.java"


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolUtf8;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolUtf8;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move v2, p2

    .local v2, "h":I
    move-object v3, p3

    .local v3, "s":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 18
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolUtf8;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolUtf8;
    return-object v0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolUtf8;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolUtf8;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolUtf8;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->hash:I

    if-nez v1, :cond_0

    .line 24
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v1, Lgnu/bytecode/CpoolUtf8;->hash:I

    .line 25
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->hash:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolUtf8;
    return v0
.end method

.method public final intern()V
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolUtf8;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolUtf8;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move v2, p2

    .local v2, "verbosity":I
    move v3, v2

    if-lez v3, :cond_0

    .line 46
    move-object v3, v1

    const-string/jumbo v4, "Utf8: "

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 47
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printQuotedString(Ljava/lang/String;)V

    .line 48
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

    .local v0, "this":Lgnu/bytecode/CpoolUtf8;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 40
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 41
    return-void
.end method
