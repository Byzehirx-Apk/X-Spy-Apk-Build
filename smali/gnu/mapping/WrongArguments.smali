.class public Lgnu/mapping/WrongArguments;
.super Ljava/lang/IllegalArgumentException;
.source "WrongArguments.java"


# instance fields
.field public number:I

.field proc:Lgnu/mapping/Procedure;

.field public procname:Ljava/lang/String;

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongArguments;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "argCount":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 84
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    .line 85
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/mapping/WrongArguments;->number:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongArguments;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "u":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 89
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/WrongArguments;->procname:Ljava/lang/String;

    .line 90
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/mapping/WrongArguments;->number:I

    .line 91
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;
    .locals 10

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "proc":Lgnu/mapping/Procedure;
    move v1, p1

    .local v1, "argCount":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v6

    move v2, v6

    .line 22
    .local v2, "num":I
    move v6, v2

    const/16 v7, 0xfff

    and-int/lit16 v6, v6, 0xfff

    move v3, v6

    .line 23
    .local v3, "min":I
    move v6, v2

    const/16 v7, 0xc

    shr-int/lit8 v6, v6, 0xc

    move v4, v6

    .line 24
    .local v4, "max":I
    move-object v6, v0

    invoke-virtual {v6}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 25
    .local v5, "pname":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 26
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 27
    :cond_0
    move-object v6, v5

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-static {v6, v7, v8, v9}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "proc":Lgnu/mapping/Procedure;
    return-object v0
.end method

.method public static checkArgCount(Ljava/lang/String;III)Ljava/lang/String;
    .locals 10

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "pname":Ljava/lang/String;
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, p3

    .local v3, "argCount":I
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 34
    const/4 v6, 0x0

    move v4, v6

    .line 39
    .local v4, "tooMany":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v5, v6

    .line 40
    .local v5, "buf":Ljava/lang/StringBuffer;
    move-object v6, v5

    const-string/jumbo v7, "call to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 41
    move-object v6, v0

    if-nez v6, :cond_3

    .line 42
    move-object v6, v5

    const-string/jumbo v7, "unnamed procedure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 49
    :goto_1
    move-object v6, v5

    move v7, v4

    if-eqz v7, :cond_4

    const-string/jumbo v7, " has too many"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 50
    move-object v6, v5

    const-string/jumbo v7, " arguments ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 51
    move-object v6, v5

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 52
    move v6, v1

    move v7, v2

    if-ne v6, v7, :cond_5

    .line 54
    move-object v6, v5

    const-string/jumbo v7, "; must be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 55
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 67
    :cond_0
    :goto_3
    move-object v6, v5

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 68
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "pname":Ljava/lang/String;
    .end local v4    # "tooMany":Z
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    :goto_4
    return-object v0

    .line 35
    .restart local v0    # "pname":Ljava/lang/String;
    :cond_1
    move v6, v2

    if-ltz v6, :cond_2

    move v6, v3

    move v7, v2

    if-le v6, v7, :cond_2

    .line 36
    const/4 v6, 0x1

    move v4, v6

    .restart local v4    # "tooMany":Z
    goto :goto_0

    .line 38
    .end local v4    # "tooMany":Z
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_4

    .line 45
    .restart local v4    # "tooMany":Z
    .restart local v5    # "buf":Ljava/lang/StringBuffer;
    :cond_3
    move-object v6, v5

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 46
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 47
    move-object v6, v5

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_1

    .line 49
    :cond_4
    const-string/jumbo v7, " has too few"

    goto :goto_2

    .line 59
    :cond_5
    move-object v6, v5

    const-string/jumbo v7, "; min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 60
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 61
    move v6, v2

    if-ltz v6, :cond_0

    .line 63
    move-object v6, v5

    const-string/jumbo v7, ", max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 64
    move-object v6, v5

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    goto :goto_3
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongArguments;
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    if-eqz v2, :cond_0

    .line 75
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/WrongArguments;->number:I

    invoke-static {v2, v3}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 76
    .local v1, "msg":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 77
    move-object v2, v1

    move-object v0, v2

    .line 79
    .end local v0    # "this":Lgnu/mapping/WrongArguments;
    .end local v1    # "msg":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/WrongArguments;
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
