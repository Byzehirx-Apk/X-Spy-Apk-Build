.class public Lgnu/expr/Symbols;
.super Ljava/lang/Object;
.source "Symbols.java"


# static fields
.field private static gensym_counter:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Symbols;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static declared-synchronized generateInt()I
    .locals 4

    .prologue
    .line 20
    const-class v2, Lgnu/expr/Symbols;

    monitor-enter v2

    :try_start_0
    sget v0, Lgnu/expr/Symbols;->gensym_counter:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    move v0, v3

    move v1, v3

    sput v1, Lgnu/expr/Symbols;->gensym_counter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static final gentemp()Lgnu/mapping/SimpleSymbol;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GS."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lgnu/expr/Symbols;->generateInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    return-object v0
.end method

.method public static final intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/Symbols;->make(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static make(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static print(Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v6, v1

    instance-of v6, v6, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_5

    move-object v6, v1

    check-cast v6, Lgnu/mapping/OutPort;

    iget-boolean v6, v6, Lgnu/mapping/OutPort;->printReadable:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    .line 81
    .local v2, "readable":Z
    move v6, v2

    if-eqz v6, :cond_7

    .line 83
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v6

    .line 84
    .local v3, "len":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_6

    .line 86
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 87
    .local v5, "ch":C
    move v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v5

    const/16 v7, 0x21

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x24

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x25

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x26

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x7e

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x5f

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x5e

    if-eq v6, v7, :cond_4

    move v6, v5

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1

    :cond_0
    move v6, v4

    if-gtz v6, :cond_4

    move v6, v3

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    :cond_1
    move v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    if-gtz v6, :cond_4

    :cond_2
    move v6, v5

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3

    move v6, v4

    if-eqz v6, :cond_4

    move-object v6, v0

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_4

    .line 95
    :cond_3
    move-object v6, v1

    const/16 v7, 0x5c

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->write(I)V

    .line 96
    :cond_4
    move-object v6, v1

    move v7, v5

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->write(I)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 79
    .end local v2    # "readable":Z
    .end local v3    # "len":I
    .end local v4    # "i":I
    .end local v5    # "ch":C
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 98
    .line 101
    .restart local v2    # "readable":Z
    :cond_6
    :goto_2
    return-void

    .line 100
    :cond_7
    move-object v6, v1

    move-object v7, v0

    invoke-interface {v6, v7}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_2
.end method
