.class public Lgnu/mapping/WrongType;
.super Lgnu/mapping/WrappedException;
.source "WrongType.java"


# static fields
.field public static final ARG_CAST:I = -0x4

.field public static final ARG_DESCRIPTION:I = -0x3

.field public static final ARG_UNKNOWN:I = -0x1

.field public static final ARG_VARNAME:I = -0x2


# instance fields
.field public argValue:Ljava/lang/Object;

.field public expectedType:Ljava/lang/Object;

.field public number:I

.field public proc:Lgnu/mapping/Procedure;

.field public procname:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move v1, p1

    .local v1, "n":I
    move-object v2, p2

    .local v2, "argValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "expectedType":Lgnu/bytecode/Type;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/WrappedException;-><init>()V

    .line 86
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/mapping/WrongType;->number:I

    .line 87
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 88
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "ex":Ljava/lang/ClassCastException;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 56
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 57
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/mapping/WrongType;->number:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "argValue":Ljava/lang/Object;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/WrappedException;-><init>()V

    .line 69
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 70
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 71
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/mapping/WrongType;->number:I

    .line 72
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "argValue":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "expectedType":Lgnu/bytecode/Type;
    move-object v5, v0

    invoke-direct {v5}, Lgnu/mapping/WrappedException;-><init>()V

    .line 77
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 78
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 79
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/mapping/WrongType;->number:I

    .line 80
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 81
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "argValue":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "expectedType":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "ex":Ljava/lang/ClassCastException;
    move-object v2, p2

    .local v2, "proc":Lgnu/mapping/Procedure;
    move v3, p3

    .local v3, "n":I
    move-object v4, p4

    .local v4, "argValue":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    .line 64
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "ex":Ljava/lang/ClassCastException;
    move-object v2, p2

    .local v2, "procname":Ljava/lang/String;
    move v3, p3

    .local v3, "n":I
    move-object v4, p4

    .local v4, "argValue":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    .line 116
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "procname":Ljava/lang/String;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "ex":Ljava/lang/ClassCastException;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 108
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 109
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/mapping/WrongType;->number:I

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "procName":Ljava/lang/String;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "argValue":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "expectedType":Ljava/lang/String;
    move-object v5, v0

    invoke-direct {v5}, Lgnu/mapping/WrappedException;-><init>()V

    .line 99
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 100
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lgnu/mapping/WrongType;->number:I

    .line 101
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 102
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "u":Ljava/lang/String;
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 48
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lgnu/mapping/WrongType;->number:I

    .line 49
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public static make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;I)Lgnu/mapping/WrongType;
    .locals 9

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "ex":Ljava/lang/ClassCastException;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "n":I
    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    move-object v0, v3

    .end local v0    # "ex":Ljava/lang/ClassCastException;
    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;
    .locals 11

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "ex":Ljava/lang/ClassCastException;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "argValue":Ljava/lang/Object;
    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move-object v9, v0

    invoke-direct {v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    move-object v4, v5

    .line 136
    .local v4, "wex":Lgnu/mapping/WrongType;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 137
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "ex":Ljava/lang/ClassCastException;
    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Ljava/lang/String;I)Lgnu/mapping/WrongType;
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "ex":Ljava/lang/ClassCastException;
    move-object v1, p1

    .local v1, "procname":Ljava/lang/String;
    move v2, p2

    .local v2, "n":I
    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    move-object v0, v3

    .end local v0    # "ex":Ljava/lang/ClassCastException;
    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)Lgnu/mapping/WrongType;
    .locals 11

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "ex":Ljava/lang/ClassCastException;
    move-object v1, p1

    .local v1, "procname":Ljava/lang/String;
    move v2, p2

    .local v2, "n":I
    move-object v3, p3

    .local v3, "argValue":Ljava/lang/Object;
    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move-object v9, v0

    invoke-direct {v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    move-object v4, v5

    .line 145
    .local v4, "wex":Lgnu/mapping/WrongType;
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 146
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "ex":Ljava/lang/ClassCastException;
    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 10

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/WrongType;
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v5

    .line 152
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v5, v0

    iget v5, v5, Lgnu/mapping/WrongType;->number:I

    const/4 v6, -0x3

    if-ne v5, v6, :cond_8

    .line 154
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 169
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 171
    move-object v5, v1

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 172
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 173
    .local v2, "argString":Ljava/lang/String;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_b

    .line 175
    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 176
    move-object v5, v1

    const-string/jumbo v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 180
    :goto_1
    move-object v5, v1

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 182
    .end local v2    # "argString":Ljava/lang/String;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/WrongType;->number:I

    const/4 v6, -0x3

    if-eq v5, v6, :cond_2

    .line 184
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/mapping/WrongType;->number:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_c

    const-string/jumbo v6, " for variable \'"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 185
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 186
    move-object v5, v1

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 188
    :cond_2
    move-object v5, v1

    const-string/jumbo v6, " has wrong type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 189
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 191
    move-object v5, v1

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 192
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 193
    move-object v5, v1

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 195
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    move-object v2, v5

    .line 196
    .local v2, "expectType":Ljava/lang/Object;
    move-object v5, v2

    if-nez v5, :cond_4

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/WrongType;->number:I

    if-lez v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    instance-of v5, v5, Lgnu/mapping/MethodProc;

    if-eqz v5, :cond_4

    .line 197
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    check-cast v5, Lgnu/mapping/MethodProc;

    move-object v6, v0

    iget v6, v6, Lgnu/mapping/WrongType;->number:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v5

    move-object v2, v5

    .line 198
    .end local v2    # "expectType":Ljava/lang/Object;
    :cond_4
    move-object v5, v2

    if-eqz v5, :cond_6

    move-object v5, v2

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v5, v6, :cond_6

    .line 200
    move-object v5, v1

    const-string/jumbo v6, " (expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 201
    move-object v5, v2

    instance-of v5, v5, Lgnu/bytecode/Type;

    if-eqz v5, :cond_d

    .line 202
    move-object v5, v2

    check-cast v5, Lgnu/bytecode/Type;

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 205
    :cond_5
    :goto_3
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 206
    move-object v5, v1

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 208
    :cond_6
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/WrongType;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    move-object v3, v5

    .line 209
    .local v3, "ex":Ljava/lang/Throwable;
    move-object v5, v3

    if-eqz v5, :cond_7

    .line 211
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 212
    .local v4, "msg":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_7

    .line 214
    move-object v5, v1

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 215
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 216
    move-object v5, v1

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 219
    .end local v4    # "msg":Ljava/lang/String;
    :cond_7
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lgnu/mapping/WrongType;
    return-object v0

    .line 156
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "this":Lgnu/mapping/WrongType;
    :cond_8
    move-object v5, v0

    iget v5, v5, Lgnu/mapping/WrongType;->number:I

    const/4 v6, -0x4

    if-eq v5, v6, :cond_9

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/WrongType;->number:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_a

    .line 158
    :cond_9
    move-object v5, v1

    const-string/jumbo v6, "Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto/16 :goto_0

    .line 162
    :cond_a
    move-object v5, v1

    const-string/jumbo v6, "Argument "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 163
    move-object v5, v0

    iget v5, v5, Lgnu/mapping/WrongType;->number:I

    if-lez v5, :cond_0

    .line 165
    move-object v5, v1

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 166
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lgnu/mapping/WrongType;->number:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    goto/16 :goto_0

    .line 179
    .local v2, "argString":Ljava/lang/String;
    :cond_b
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto/16 :goto_1

    .line 184
    .end local v2    # "argString":Ljava/lang/String;
    :cond_c
    const-string/jumbo v6, " to \'"

    goto/16 :goto_2

    .line 203
    :cond_d
    move-object v5, v2

    instance-of v5, v5, Ljava/lang/Class;

    if-eqz v5, :cond_5

    .line 204
    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .local v2, "expectType":Ljava/lang/String;
    goto/16 :goto_3
.end method
