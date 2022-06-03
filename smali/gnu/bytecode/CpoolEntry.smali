.class public abstract Lgnu/bytecode/CpoolEntry;
.super Ljava/lang/Object;
.source "CpoolEntry.java"


# instance fields
.field hash:I

.field public index:I

.field next:Lgnu/bytecode/CpoolEntry;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolEntry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ConstantPool;I)V
    .locals 16

    .prologue
    .line 53
    move-object/from16 v1, p0

    .local v1, "this":Lgnu/bytecode/CpoolEntry;
    move-object/from16 v2, p1

    .local v2, "cpool":Lgnu/bytecode/ConstantPool;
    move/from16 v3, p2

    .local v3, "h":I
    move-object v8, v1

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v8, v1

    move v9, v3

    iput v9, v8, Lgnu/bytecode/CpoolEntry;->hash:I

    .line 55
    move-object v8, v2

    iget-boolean v8, v8, Lgnu/bytecode/ConstantPool;->locked:Z

    if-eqz v8, :cond_0

    .line 56
    new-instance v8, Ljava/lang/Error;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string/jumbo v10, "adding new entry to locked contant pool"

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 57
    :cond_0
    move-object v8, v1

    move-object v9, v2

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget v10, v10, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v14, v9

    move v15, v10

    move v9, v15

    move-object v10, v14

    move v11, v15

    iput v11, v10, Lgnu/bytecode/ConstantPool;->count:I

    iput v9, v8, Lgnu/bytecode/CpoolEntry;->index:I

    .line 60
    move-object v8, v2

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-nez v8, :cond_4

    .line 61
    move-object v8, v2

    const/16 v9, 0x3c

    new-array v9, v9, [Lgnu/bytecode/CpoolEntry;

    iput-object v9, v8, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 73
    :cond_1
    :goto_0
    move-object v8, v2

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-eqz v8, :cond_2

    move-object v8, v1

    iget v8, v8, Lgnu/bytecode/CpoolEntry;->index:I

    int-to-double v8, v8

    const-wide v10, 0x3fe3333333333333L    # 0.6

    move-object v12, v2

    iget-object v12, v12, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v12, v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_3

    .line 74
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 77
    :cond_3
    move-object v8, v2

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move-object v9, v1

    iget v9, v9, Lgnu/bytecode/CpoolEntry;->index:I

    move-object v10, v1

    aput-object v10, v8, v9

    .line 79
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lgnu/bytecode/CpoolEntry;->add_hashed(Lgnu/bytecode/ConstantPool;)V

    .line 80
    return-void

    .line 62
    :cond_4
    move-object v8, v1

    iget v8, v8, Lgnu/bytecode/CpoolEntry;->index:I

    move-object v9, v2

    iget-object v9, v9, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v9, v9

    if-lt v8, v9, :cond_1

    .line 64
    move-object v8, v2

    iget-object v8, v8, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v8, v8

    move v4, v8

    .line 65
    .local v4, "old_size":I
    const/4 v8, 0x2

    move-object v9, v2

    iget-object v9, v9, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v9, v9

    mul-int/2addr v8, v9

    move v5, v8

    .line 66
    .local v5, "new_size":I
    move v8, v5

    new-array v8, v8, [Lgnu/bytecode/CpoolEntry;

    move-object v6, v8

    .line 67
    .local v6, "new_pool":[Lgnu/bytecode/CpoolEntry;
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_5

    .line 68
    move-object v8, v6

    move v9, v7

    move-object v10, v2

    iget-object v10, v10, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    move v11, v7

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 67
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 69
    :cond_5
    move-object v8, v2

    move-object v9, v6

    iput-object v9, v8, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    goto :goto_0
.end method


# virtual methods
.method add_hashed(Lgnu/bytecode/ConstantPool;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolEntry;
    move-object v1, p1

    .local v1, "cpool":Lgnu/bytecode/ConstantPool;
    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    move-object v2, v4

    .line 45
    .local v2, "hashTab":[Lgnu/bytecode/CpoolEntry;
    move-object v4, v0

    iget v4, v4, Lgnu/bytecode/CpoolEntry;->hash:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    move-object v5, v2

    array-length v5, v5

    rem-int/2addr v4, v5

    move v3, v4

    .line 46
    .local v3, "index":I
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    iput-object v5, v4, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    .line 47
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    aput-object v6, v4, v5

    .line 48
    return-void
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolEntry;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolEntry;->index:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolEntry;
    return v0
.end method

.method public abstract getTag()I
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/CpoolEntry;
    move-object v1, v0

    iget v1, v1, Lgnu/bytecode/CpoolEntry;->hash:I

    move v0, v1

    .end local v0    # "this":Lgnu/bytecode/CpoolEntry;
    return v0
.end method

.method public abstract print(Lgnu/bytecode/ClassTypeWriter;I)V
.end method

.method abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
