.class public Lgnu/bytecode/CpoolRef;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolRef.java"


# instance fields
.field clas:Lgnu/bytecode/CpoolClass;

.field nameAndType:Lgnu/bytecode/CpoolNameAndType;

.field tag:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolRef;
    move v1, p1

    .local v1, "tag":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/bytecode/CpoolEntry;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/bytecode/CpoolRef;->tag:I

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;IILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)V
    .locals 9

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolRef;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move v2, p2

    .local v2, "hash":I
    move v3, p3

    .local v3, "tag":I
    move-object v4, p4

    .local v4, "clas":Lgnu/bytecode/CpoolClass;
    move-object v5, p5

    .local v5, "nameAndType":Lgnu/bytecode/CpoolNameAndType;
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 39
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lgnu/bytecode/CpoolRef;->tag:I

    .line 40
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    .line 41
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    .line 42
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)I
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "clas":Lgnu/bytecode/CpoolClass;
    move-object v1, p1

    .local v1, "nameAndType":Lgnu/bytecode/CpoolNameAndType;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/bytecode/CpoolClass;->hashCode()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CpoolNameAndType;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    move v0, v2

    .end local v0    # "clas":Lgnu/bytecode/CpoolClass;
    return v0
.end method


# virtual methods
.method public final getCpoolClass()Lgnu/bytecode/CpoolClass;
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolRef;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolRef;
    return-object v0
.end method

.method public final getNameAndType()Lgnu/bytecode/CpoolNameAndType;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolRef;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolRef;
    return-object v0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolRef;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolRef;->tag:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolRef;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolRef;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolRef;->hash:I

    if-nez v1, :cond_0

    .line 52
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    invoke-static {v2, v3}, Lgnu/bytecode/CpoolRef;->hashCode(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)I

    move-result v2

    iput v2, v1, Lgnu/bytecode/CpoolRef;->hash:I

    .line 53
    :cond_0
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolRef;->hash:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolRef;
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolRef;
    move-object v1, p1

    .local v1, "dst":Lgnu/bytecode/ClassTypeWriter;
    move v2, p2

    .local v2, "verbosity":I
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CpoolRef;->tag:I

    packed-switch v4, :pswitch_data_0

    .line 71
    const-string/jumbo v4, "<Unknown>Ref"

    move-object v3, v4

    .line 73
    .local v3, "str":Ljava/lang/String;
    :goto_0
    move v4, v2

    if-lez v4, :cond_0

    .line 75
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 76
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 78
    move-object v4, v1

    const-string/jumbo v5, " class: "

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 79
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 84
    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/CpoolClass;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 85
    move v4, v2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 86
    move-object v4, v1

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 93
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/CpoolNameAndType;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 94
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 95
    move-object v4, v1

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 96
    :cond_1
    return-void

    .line 68
    .end local v3    # "str":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v4, "Field"

    move-object v3, v4

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v3    # "str":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v4, "Method"

    move-object v3, v4

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v3    # "str":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v4, "InterfaceMethod"

    move-object v3, v4

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 82
    :cond_2
    move-object v4, v1

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 89
    :cond_3
    move-object v4, v1

    const-string/jumbo v5, " name_and_type: "

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 91
    move-object v4, v1

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_2

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolRef;
    move-object v1, p1

    .local v1, "dstr":Ljava/io/DataOutputStream;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/bytecode/CpoolRef;->tag:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 59
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    iget v3, v3, Lgnu/bytecode/CpoolClass;->index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    iget v3, v3, Lgnu/bytecode/CpoolNameAndType;->index:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 61
    return-void
.end method
